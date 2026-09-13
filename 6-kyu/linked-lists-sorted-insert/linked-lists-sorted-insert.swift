class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}
​
enum LinkedListError: Error {
    case invalidIndex
}
​
func sortedInsert(_ head: Node?, _ data: Int) -> Node? {
    var current = head
    var previous: Node? = nil
​
    while let node = current {
        if data <= node.data {
            let newNode = push(node, data)
​
            if previous == nil {
                return newNode
            }
​
            previous?.next = newNode
            return head
        }
​
        previous = node
        current = node.next
    }
​
    let newNode = push(nil, data)
    previous?.next = newNode
​
    return head ?? newNode
}