func highAndLow(_ numbers: String) -> String {
    let numbers = numbers.components(separatedBy: " ").map{ Int($0)! }
    let highest = numbers.max() ?? 0
    let lowest = numbers.min() ?? 0
​
    return "\(highest) \(lowest)"
}