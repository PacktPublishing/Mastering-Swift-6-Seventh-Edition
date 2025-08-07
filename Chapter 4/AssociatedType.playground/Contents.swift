import Foundation

protocol QueueProtocol {
    associatedtype QueueType
    mutating func add(item: QueueType)
    mutating func getItem() -> QueueType?
    func count() -> Int
}


class IntQueue: QueueProtocol {
    var items = [Int]()
    func add(item: Int) {
        items.append(item)
    }
    func getItem() -> Int? {
        return items.count > 0 ? items.remove(at: 0) : nil
    }
    func count() -> Int {
        return items.count
    }
}

class GenericQueue<T>: QueueProtocol {
    var items = [T]()
    func add(item: T) {
        items.append(item)
    }
    func getItem() -> T? {
        return items.count > 0 ? items.remove(at:0) : nil
    }
    func count() -> Int {
        return items.count
    }
}

func testQueue() {
    var intQ2 = GenericQueue<Int>()
    intQ2.add(item: 2)
    intQ2.add(item: 4)
    print(intQ2.getItem()!)
    intQ2.add(item: 6)

}

testQueue()

