// This version evades counting the same words twice when the window slides across the array
func longestConsec(_ strarr: [String], _ k: Int) -> String {
    guard !strarr.isEmpty, k <= strarr.count, k > 0 else { return "" }
​
    var currentLength = strarr[0..<k].reduce(0) { $0 + $1.count }
    var largestStringCount = currentLength
    var firstWindow = 0
​
    for start in 1..<(strarr.count - k + 1) {
        let oldIndex = start - 1
        let newIndex = start + k - 1
​
        currentLength -= strarr[oldIndex].count
        currentLength += strarr[newIndex].count
​
        if currentLength > largestStringCount {
            largestStringCount = currentLength
            firstWindow = start
        }
    }
​
    let end = firstWindow + k
    return strarr[firstWindow..<end].joined()
}
​