import Foundation

class LinkedList<T: Hashable> {

    class LinkedListNode<T> {
        var value: T
        var next: LinkedListNode?
        weak var prev: LinkedListNode?

        init(_ value: T) {
            self.value = value
        }
    }

    public typealias Node = LinkedListNode<T>

    private(set) var head: Node?

    public var isEmpty: Bool {
        return head == nil
    }

    /// Iterates through the linked list and returns last node (if any)
    public var last: Node? {
        guard var node = head else {
            return nil
        }

        while let next = node.next {
            node = next
        }
        return node
    }

    /// Append a value to the end of the list.
    ///
    /// - Parameter value: The data value to be appended
    public func append(_ value: T) {
        let newNode = Node(value)
        append(newNode)
    }

    /// Append a copy of a LinkedListNode to the end of the list.
    ///
    /// - Parameter node: The node containing the value to be appended
    public func append(_ node: Node) {
        let newNode = node
        if let lastNode = last {
            newNode.prev = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }

    /// Removes a specific node.
    ///
    /// - Parameter node: The node to be deleted
    /// - Returns: The data value contained in the deleted node
    @discardableResult public func remove(node: Node) -> T {
        let prev = node.prev
        let next = node.next

        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.prev = prev

        // clear it
        node.prev = nil
        node.next = nil

        return node.value
    }
}

extension LinkedList {
    /// Mutates the list, removing any duplicate nodes (matching values)
    ///
    /// Time: O(n)
    /// Space: O(1)
    func removeDuplicates() {
        var hasSeen = Set<T>()

        var curNode = head
        while let node = curNode {
            if hasSeen.contains(node.value) {
                let nextNode = node.next
                remove(node: node)
                curNode = nextNode?.next
            } else {
                hasSeen.insert(node.value)
                curNode = node.next
            }
        }
    }
}

extension LinkedList {
    func toArray() -> [T] {
        var out = [T]()

        var node = head
        while let next = node {
            out.append(next.value)
            node = next.next
        }

        return out
    }
}
