import XCTest
@testable import AlgoStudy

class LinkedListsTests: XCTestCase {

    /*
     2.1 - Remove Dups
     Write code to remove duplicates from an unsorted linked list.
     How would you solve this problem if a temporary buffer is not allowed?
     [Hints: #9, #40] (pg 208)
     */
    func testProblem_2_1() {
        let list = LinkedList<Int>()
        for val in [8, 2, 10, 2, 9, 7, 8, 5] {
            list.append(val)
        }

        list.removeDuplicates()
        
        let result = list.toArray()
        let expected = [8, 2, 10, 9, 7, 5]
        XCTAssertEqual(result, expected)
    }


}
