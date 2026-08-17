func specialNumber(_ number: Int) -> String {
    let numberString = String(number)
    let notSpecial = numberString.filter { ("6"..."9").contains($0) }
​
    return notSpecial.count < 1 ? "Special!!" : "NOT!!"
}