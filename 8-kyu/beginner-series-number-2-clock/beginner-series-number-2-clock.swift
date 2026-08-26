func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    var hoursToMilliseconds = h * 60 * 60 * 1000
    var minutesToMilliseconds = m * 60 * 1000
    var secondsToMilliseconds = s * 1000
​
    return hoursToMilliseconds + minutesToMilliseconds + secondsToMilliseconds
}