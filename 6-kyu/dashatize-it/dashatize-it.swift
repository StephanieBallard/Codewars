func dashatize(_ number: Int) -> String {
    let string = String(abs(number))
    var dashedString = ""
    var wasOdd = false
​
    for (index, value) in string.enumerated() {
        let currentValue = (value.wholeNumberValue ?? 0) % 2 != 0
​
        if index != 0 && (wasOdd || currentValue) {
            dashedString.append("-\(value)")
        } else {
            dashedString.append(value)
        }
​
        wasOdd = currentValue
    }
​
    return dashedString
}
​