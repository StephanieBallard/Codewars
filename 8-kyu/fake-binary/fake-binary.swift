func fakeBin(digits: String) -> String {
    var binaryString = ""
​
    digits.forEach { char in
        switch char.wholeNumberValue ?? 0 {
        case ...4:
            binaryString.append("0")
        default:
            binaryString.append("1")
        }
    }
​
    return binaryString
}