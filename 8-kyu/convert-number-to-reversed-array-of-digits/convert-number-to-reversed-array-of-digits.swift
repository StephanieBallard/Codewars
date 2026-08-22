func digitize(_ num: Int) -> [Int] {
    return String(num).reversed().compactMap(\.wholeNumberValue)
}