func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    return arr.flatMap { $0 }.sorted()
}