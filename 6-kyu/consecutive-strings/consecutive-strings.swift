func longestConsec(_ strarr: [String], _ k: Int) -> String {
    guard !strarr.isEmpty, k <= strarr.count, k > 0 else { return "" }
​
    var largestStringCount = 0
    var longestWord = ""
​
    for start in 0...(strarr.count - k) {
        let end = start + k
        let window = strarr[start..<end]
        let word = window.joined()
​
        if word.count > largestStringCount {
            longestWord = word
            largestStringCount = word.count
        }
    }
​
    return longestWord
}