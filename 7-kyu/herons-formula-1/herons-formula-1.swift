func heron(_ a: Int, _ b: Int, _ c: Int) -> Double {
    let aAsDouble = Double(a)
    let bAsDouble = Double(b)
    let cAsDouble = Double(c)
​
    let s = (aAsDouble + bAsDouble + cAsDouble) / 2
    let valueToSquareRoot = s * (s - aAsDouble) * (s - bAsDouble) * (s - cAsDouble)
    let heron = valueToSquareRoot.squareRoot()
​
    return heron
}