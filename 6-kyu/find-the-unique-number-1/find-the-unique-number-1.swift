func findUniq(_ arr: [Int]) -> Int {
    let first = arr[0]
    let second = arr[1]
    let third = arr[2]
​
    let commonNumber = first == second || first == third ? first : second
​
    return arr.first { $0 != commonNumber } ?? 0
}