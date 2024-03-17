import XCTest
@testable import MovieQuiz

final class ArrayTests: XCTestCase {
    private func testGetValueInRange() throws {
        // Given
        let array: [Int] = [1, 1, 2, 3, 5]
        // When
        let value = array[safe: 2]
        // Then
        XCTAssertNotNil(value)
        XCTAssertEqual(value, 2)
    }
    
    private func testGetValueOutOfRange() throws {
        // Given
        let array: [Int] = [1, 1, 2, 3, 5]
        // When
        let value = array[safe: 2]
        // Then
        XCTAssertNil(value)
    }
}
