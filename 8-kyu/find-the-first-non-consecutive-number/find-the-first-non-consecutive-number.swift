func firstNonConsecutive (_ arr: [Int]) -> Int? {
    for i in arr.indices.dropFirst() {
        if arr[i] != arr[i - 1] + 1 {
            return arr[i]
        }
    }
​
    return nil
}