func isTriangle(_ a: Int, _ b: Int, _ c: Int) -> Bool {
    return (a + b > c) && (a + c > b) && (b + c > a)
}