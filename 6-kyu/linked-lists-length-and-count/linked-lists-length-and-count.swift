class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}
​
func length(_ head: Node?) -> Int {
    var current = head
    var count = 0
​
    while let node = current {
        current = node.next
        count += 1
    }
​
    return count
}
​
func count(_ head: Node?, _ data: Int) -> Int {
    var current = head
    var counter = 0
​
    while let node = current {
        if node.data == data {
            counter += 1
        }
​
        current = node.next
    }
​
    return counter
}
​