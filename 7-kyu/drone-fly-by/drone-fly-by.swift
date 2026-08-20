func flyBy(lamps: String, drone: String) -> String {
    let lightsOnCount = min(lamps.count, drone.count)
    let lightsOffCount = lamps.count - lightsOnCount
​
    return String(repeating: "o", count: lightsOnCount) + String(repeating: "x", count: lightsOffCount)
}