enum LinkedListError: Error {
    case invalidIndex
}
​
func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
    var current = head
    var counter = 0
    var previous: Node? = nil
​
    if index == 0 {
        return push(current, data)
    }
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
    throw LinkedListError.invalidIndex
}
​