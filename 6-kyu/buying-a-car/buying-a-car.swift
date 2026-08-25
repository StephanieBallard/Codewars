func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
    if startPriceOld >= startPriceNew {
        return (0, startPriceOld - startPriceNew)
    }
​
    var oldCarValue = Double(startPriceOld)
    var newCarValue = Double(startPriceNew)
    var savings = 0.0
    var percentLoss = percentLossByMonth
    var month = 0
​
    while oldCarValue + savings < newCarValue {
        month += 1
​
        if month % 2 == 0 {
            percentLoss += 0.5
        }
​
        oldCarValue -= oldCarValue * percentLoss / 100
        newCarValue -= newCarValue * percentLoss / 100
​
        savings += Double(savingPerMonth)
    }
​
    let amountLeftOver = savings + oldCarValue - newCarValue
​
    return (month, Int(amountLeftOver.rounded()))
}