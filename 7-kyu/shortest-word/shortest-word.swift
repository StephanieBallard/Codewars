func find_short(_ str: String) -> Int {
    let words = str.components(separatedBy: " ")
    let sortedWords = words.sorted { $0.count < $1.count }
​
    return sortedWords.first?.count ?? 0
}