func wave(_ y: String) -> [String] {
    guard !y.isEmpty else { return [] }
​
    var wave: [String] = []
​
    for (index, char) in y.enumerated() {
        if char == " " {
            continue
        }
​
        var chars = Array(y)
        chars[index] = Character(chars[index].uppercased())
​
        wave.append(String(chars))
    }
​
    return wave
}