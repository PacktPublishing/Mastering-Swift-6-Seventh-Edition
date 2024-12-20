import Cocoa

class List<T> {
   private var items = [T]()
    
    func add(item: T) {
        items.append(item)
    }

    func getItemAtIndex(index: Int) -> T? {
        if items.count>index {
            return items[index]
        } else {
            return nil
        }
    }

}

extension List {
    func sum () -> T where T: Numeric {
       items.reduce (0, +)
    }
    
    func sorted() -> [T] where T: Comparable {
        items.sorted()
    }

}

extension List: Equatable where T: Equatable {
    static func == (l1:List, l2:List) -> Bool {
        if l1.items.count != l2.items.count {
            return false
        }
        for (e1, e2) in zip(l1.items, l2.items) {
            if e1 != e2 {
                return false
            }
        }
        return true
    }
}



func testList() {
    var list = List<String>()
    list.add(item: "Hello")
    list.add(item: "World")
    print(list.getItemAtIndex(index: 1)!)
    print(list.sorted())

    var list2 = List<Int>()
    list2.add(item: 2)
    list2.add(item: 4)
    list2.add(item: 6)
    print(list2.sum())

}


testList()

