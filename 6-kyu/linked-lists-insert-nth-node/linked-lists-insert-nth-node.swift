enum LinkedListError: Error {
    case indexOutOfRange
}
​
func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
    if index == 0 {
        return push(head, data)
    }
​
    var current = head
    var previous: Node? = nil
    var counter = 0
​
    while let node = current {
        if counter == index {
            let newNode = push(node, data)
            previous?.next = newNode
​
            return head
        }
​
        previous = current
        current = node.next
        counter += 1
    }
​
    if counter == index {
        let newNode = push(current, data)
        previous?.next = newNode
​
        return head
    }
​
    throw LinkedListError.indexOutOfRange
}