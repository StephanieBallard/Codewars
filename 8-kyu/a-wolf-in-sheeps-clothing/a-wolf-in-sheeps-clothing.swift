func warnTheSheep(_ queue: [String]) -> String {
    if queue.last == "wolf" {
        return "Pls go away and stop eating my sheep"
    }
​
    let wolfIndex = queue.firstIndex(where: { $0 == "wolf" }) ?? 0
    let sheepToWarn = (queue.count - 1) - wolfIndex
​
    return "Oi! Sheep number \(sheepToWarn)! You are about to be eaten by a wolf!"
}