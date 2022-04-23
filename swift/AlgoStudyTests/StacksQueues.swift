import XCTest
@testable import AlgoStudy

class StacksQueues: XCTestCase {
    func testStackBasics() {
        let cookieJar = Stack<String>()

        XCTAssertEqual(cookieJar.isEmpty(), true)

        XCTAssertNil(cookieJar.pop())

        cookieJar.push("chocolate")
        cookieJar.push("almond")
        cookieJar.push("peanut butter")

        XCTAssertEqual(cookieJar.pop(), "peanut butter")
        XCTAssertEqual(cookieJar.peek(), "almond")
        XCTAssertEqual(cookieJar.isEmpty(), false)
    }

    func testQueueBasics() {
        let cookieJar = Queue<String>()

        XCTAssertEqual(cookieJar.isEmpty(), true)

        XCTAssertNil(cookieJar.dequeue())

        cookieJar.enqueue("chocolate")
        cookieJar.enqueue("almond")
        cookieJar.enqueue("peanut butter")

        XCTAssertEqual(cookieJar.dequeue(), "chocolate")
        XCTAssertEqual(cookieJar.head(), "almond")
        XCTAssertEqual(cookieJar.isEmpty(), false)
    }

    func testSortStack() {
        let data = Stack<Int>()

        data.push(9)
        data.push(8)
        data.push(3)
        data.push(6)
        data.push(12)

        data.sort(direction: .ascending)

        XCTAssertEqual(data.pop(), 3)
        XCTAssertEqual(data.pop(), 6)
        XCTAssertEqual(data.pop(), 8)
        XCTAssertEqual(data.pop(), 9)
        XCTAssertEqual(data.pop(), 12)
    }
}
