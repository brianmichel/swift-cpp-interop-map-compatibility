import Cxx
import CppLibrary

extension CppLibrary.utils.maps.UnorderedMapStringString: CxxDictionary {}
extension CppLibrary.utils.maps.MapStringString: CxxDictionary {}

public final class InteropChecker {
  public func cppUnorderedMapStringString() -> CppLibrary.utils.maps.UnorderedMapStringString {
    let map = CppLibrary.utils.maps.create_unordered_map_string_string()
    var iterator = map.__beginUnsafe()
    let end = map.__endUnsafe()

    while iterator != end {
      let pair = iterator.pointee
      print("k: \(pair.first), v: \(pair.second)")
      iterator = iterator.successor()
    }

    return map
  }

  public func cppMapStringString() -> CppLibrary.utils.maps.MapStringString {
    let map = CppLibrary.utils.maps.create_map_string_string()

    return map
  }

  public func notReturningCppObject() -> String {
    "Hi Mom"
  }

  public init() {}
}
