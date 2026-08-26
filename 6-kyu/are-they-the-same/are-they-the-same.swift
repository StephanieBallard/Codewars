func comp(_ a: [Int], _ b: [Int]) -> Bool {
    guard a.count == b.count else { return false }
​
    var counts: [Int: Int] = [:]
​
    for number in a {
        counts[number * number, default: 0] += 1
    }
​
    for number in b {
        guard let count = counts[number], count > 0 else {
            return false
        }
​
        counts[number] = count - 1
    }
​
    return true
}