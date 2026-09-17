class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}
​
func sortedInsert(_ head: Node?, _ data: Int) -> Node? {
    guard let head = head, data > head.data else {
        return push(head, data)
    }
​
    var current = head
​
    while let next = current.next, next.data < data {
        current = next
    }
​
    current.next = push(current.next, data)
​
    return head
}
​