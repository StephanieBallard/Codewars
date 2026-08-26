func disariumNumber(_ number: Int) -> String {
    let string = String(number)
    var total = 0
​
    for (index, char) in string.enumerated() {
        let digit = Double(char.wholeNumberValue ?? 0)
        let position = Double(index + 1)
​
        let powered = pow(digit, position)
        total += Int(powered)
    }
​
    return total == number ? "Disarium !!" : "Not !!"
}