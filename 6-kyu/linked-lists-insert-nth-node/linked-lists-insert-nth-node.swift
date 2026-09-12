enum LinkedListError: Error {
    case invalidIndex
}
​
func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
    var current = head
    var previous: Node? = nil
    var counter = 0
​
    if index == 0 {
        let newNode = Node(data)
        newNode.next = head
​
        return newNode
    }
​
    while let node = current {
        if counter == index {
            let newNode = Node(data)
            newNode.next = current
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
        let newNode = Node(data)
        previous?.next = newNode
​
        return head
    }
​
    throw LinkedListError.invalidIndex
}
​