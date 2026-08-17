func printerError(_ s: String) -> String {
    let errors = s.filter { !("a"..."m").contains($0) }
​
    return "\(errors.count)/\(s.count)"
}