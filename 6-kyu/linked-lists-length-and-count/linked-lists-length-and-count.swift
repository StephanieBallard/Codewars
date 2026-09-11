class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}
​
func length(_ head: Node?) -> Int {
    var total = 0
    var current = head
​
    while let node = current {
        total += 1
        current = node.next
    }
​
    return total
}
​
func count(_ head: Node?, _ data: Int) -> Int {
    var total = 0
    var current = head
​
    while let node = current {
        if node.data == data {
            total += 1
        }
​
        current = node.next
    }
​
    return total
}