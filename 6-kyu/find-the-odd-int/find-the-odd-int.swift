func findIt(_ seq: [Int]) -> Int {
    let count = seq.reduce(into: [:]) { result, num in
        result[num, default: 0] += 1
    }
​
    let oddNumber = count.filter { $0.value % 2 != 0 }
​
    return oddNumber.first?.key ?? 0
}