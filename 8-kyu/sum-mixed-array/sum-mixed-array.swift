func sumMix(_ arr: [Any]) -> Int {
    // reduce then switch
    arr.reduce(0) { sum, value in
        switch value {
        case let value as String:
            return sum + (Int(value) ?? 0)
​
        default:
            return sum + (value as? Int ?? 0)
        }
    }
}