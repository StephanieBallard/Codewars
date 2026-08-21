func accum(_ s: String) -> String {
    var accum = ""
​
    for (index, char) in s.enumerated() {
        accum.append(char.uppercased())
        accum.append(String(repeating: char.lowercased(), count: index))
​
        if index != s.count - 1 {
            accum.append("-")
        }
    }
​
    return accum
}