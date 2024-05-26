import Cocoa

class LinkedListReferenceType {
    var value: String
    var next: LinkedListReferenceType?
    init(_ value: String) {
        self.value = value
    }
}

var node1 = LinkedListReferenceType("One")
var node2 = LinkedListReferenceType("two")
var node3 = LinkedListReferenceType("three")

node1.next = node2
node2.next = node3

print(node2.next?.value)
                                    
