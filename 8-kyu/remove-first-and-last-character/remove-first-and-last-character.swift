func removeFirstAndLast(_ str: String) -> String {
    guard str.count >= 2 else { return "" }
​
    var string = str
    string.removeFirst()
    string.removeLast()
​
    return string
}