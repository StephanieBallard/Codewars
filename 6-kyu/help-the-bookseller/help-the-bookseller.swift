func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    if listOfArt.isEmpty || listOfCat.isEmpty {
        return ""
    }
​
    var categoryCount: [String: Int] = [:]
​
    for book in listOfArt {
        let parts = book.split(separator: " ")
​
        guard
            let category = parts.first?.first,
            let quantityString = parts.last,
            let quantity = Int(quantityString)
        else {
            continue
        }
​
        categoryCount[String(category), default: 0] += quantity
    }
​
    let inventory = listOfCat.map { category in
        "(\(category) : \(categoryCount[category, default: 0]))"
    }
​
    return inventory.joined(separator: " - ")
}
​