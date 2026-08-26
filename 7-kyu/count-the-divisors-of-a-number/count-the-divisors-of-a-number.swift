func divisors(_ n: UInt32) -> UInt32 {
    var count: UInt32 = 0
    var i: UInt32 = 1
​
    while i * i <= n {
        if n % i == 0 {
            if i * i == n {
                count += 1
            } else {
                count += 2
            }
        }
​
        i += 1
    }
​
    return count
}