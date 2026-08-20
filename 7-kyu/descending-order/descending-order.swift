func descendingOrder(of number: Int) -> Int {
    let sorted = String(number).sorted { $0 > $1 }
    let sortedString = String(sorted)
​
    return Int(sortedString) ?? 0
}