func oddOne(_ arr: [Int]) -> Int? {
    return arr.firstIndex(where: { (abs($0) % 2 != 0) } )
}
​