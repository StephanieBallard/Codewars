enum LinkedListError: Error {
    case indexOutOfRange
}
​
class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}
​
func getNth(_ head: Node?, _ index: Int) throws -> Node? {
    var current = head
    var counter = 0
​
    while let node = current {
        if counter == index {
            return node
        }
​
        counter += 1
        current = node.next
    }
​
    throw LinkedListError.indexOutOfRange
}
​