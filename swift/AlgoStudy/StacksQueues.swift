import Foundation

class Stack<T: Comparable> {

    private var items: [T] = []

    func isEmpty() -> Bool {
        items.count == 0
    }

    func push(_ element: T) {
        items.append(element)
    }

    func pop() -> T? {
        guard items.count > 0 else {
            return nil
        }
        return items.popLast()
    }

    func peek() -> T? {
        items.last
    }
}

class Queue<T> {

    private var items: [T] = []

    func isEmpty() -> Bool {
        items.count == 0
    }

    func enqueue(_ element: T) {
        items.append(element)
    }

    func dequeue() -> T? {
        guard items.count > 0 else {
            return nil
        }
        return items.removeFirst()
    }

    func head() -> T? {
        items.first
    }

    func tail() -> T? {
        items.last
    }
}

extension Stack {
    enum Sorting {
        case ascending
        case descending
    }

    /// NOTE: I know we can just sort the array
    /// how would we do this using only the stack operations?
    func sort(direction: Sorting) {
        guard !isEmpty() else {
            return
        }

        // iterate until the original stack is empty, and in each iteration
        // pop an element from the original stack.
        // while the top element in the second stack is bigger than the removed
        // element, pop the second stack and push it to the original stack

        let store = Stack<T>()
        while let element = pop() {
            while let compare = store.peek(), compare < element {
                _ = store.pop()
                push(compare)
            }
            store.push(element)
        }
        while let element = store.pop() {
            push(element)
        }
    }
}
