#include "include/utils.hh"

namespace utils {
namespace maps {
static UnorderedMapStringString create_unordered_map_string_string() {
  UnorderedMapStringString map;
  map["hi"] = "mom";

  return map;
}

static MapStringString create_map_string_string() {
  MapStringString map;
  map["hi"] = "mom";

  return map;
}

} // maps
} // utils
