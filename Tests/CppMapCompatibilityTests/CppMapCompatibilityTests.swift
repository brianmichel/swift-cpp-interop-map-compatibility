import XCTest
import CppMapCompatibility

final class CppMapCompatibilityTests: XCTestCase {
  func testValueIsProducedReturningCppObject() throws {
    let tester = InteropChecker()
    // Why does it think this function doesn't exist?
    tester.cppUnorderedMapStringString()

    XCTAssert(true)
  }

  func testValueIsProducedReturningNonCppObject() throws {
    let tester = InteropChecker()
    let value = tester.notReturningCppObject()

    XCTAssertEqual(value, "Hi Mom")
  }
}
