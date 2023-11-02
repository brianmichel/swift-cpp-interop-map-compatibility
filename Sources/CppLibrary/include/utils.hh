#ifndef UTILS_HPP
#define UTILS_HPP

#include <string>
#include <unordered_map>
#include <map>

namespace utils {
namespace maps {

using UnorderedMapStringString = std::unordered_map<std::string, std::string>;
using MapStringString = std::map<std::string, std::string>;

/// @brief Creates a new `UnorderedMapStringString`
/// @return a newly initialized `UnorderedMapStringString`
static UnorderedMapStringString create_unordered_map_string_string();

/// @brief Creates a new `MapStringString`
/// @return a newly initialized `MapStringString`
static MapStringString create_map_string_string();

}  // namespace maps
}  // namespace utils

#endif  // UTILS_HPP
