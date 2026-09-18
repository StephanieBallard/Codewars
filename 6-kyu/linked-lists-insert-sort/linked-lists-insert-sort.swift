class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}
​
func insertSort(head: Node?) -> Node? {
    var current = head
    var sorted: Node? = nil
    
    while let node = current {
        sorted = sortedInsert(sorted, node.data)
        current = node.next
    }
  
    return sorted
}
​
​