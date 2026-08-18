func litres(_ time: Double) -> Int {
    var amountToDrink = time * 0.5
    amountToDrink.round(.down)
​
    return Int(amountToDrink)
}
​