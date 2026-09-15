class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}
​
func sortedInsert(_ head: Node?, _ data: Int) -> Node? {
    let newNode = Node(data)
​
    guard let head = head, data > head.data else {
        newNode.next = head
        return newNode
    }
​
    var tail = head
​
    while let next = tail.next, next.data < data {
        tail = next
    }
​
    newNode.next = tail.next
    tail.next = newNode
​
    return head
}
​