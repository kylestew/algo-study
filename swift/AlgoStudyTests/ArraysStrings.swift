import XCTest
@testable import AlgoStudy

class ArraysStringsTests: XCTestCase {

    /*
     1.1 - Is Unique
     Implement an algorithm to determine if a string has all unique characters.
     What if you cannot use additional data structures?
     [Hints: #44, #117, #132] (pg 192)
     */
    func testProblem_1_1() {
        let allUnique = "abc123"
        XCTAssertTrue(ArraysStrings.allCharactersUnique(allUnique))

        let notUnique = "abcabc"
        XCTAssertFalse(ArraysStrings.allCharactersUnique(notUnique))
    }


}
