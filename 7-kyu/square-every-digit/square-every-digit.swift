func squareDigits(_ num: Int) -> Int {
    let stringNum = String(num)
    var squaredString = ""
​
    stringNum.forEach { char in
        let squared = (char.wholeNumberValue ?? 0) * (char.wholeNumberValue ?? 0)
        squaredString.append(String(squared))
    }
​
    return Int(squaredString) ?? 0
}
​