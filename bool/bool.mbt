// Copyright 2025 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

///|
/// Converts a boolean value to its integer representation.
///
/// Parameters:
///
/// * `self` : The boolean value to convert.
///
/// Returns 1 if the boolean is `true`, 0 if it is `false`.
///
/// Example:
///
/// ```moonbit
///   inspect(true.to_int(), content="1")
///   inspect(false.to_int(), content="0")
/// ```
pub fn to_int(self : Bool) -> Int {
  if self {
    1
  } else {
    0
  }
}

///|
/// Converts a boolean value to a 64-bit integer. Returns 1 for `true` and 0 for
/// `false`.
///
/// Parameters:
///
/// * `bool` : The boolean value to be converted.
///
/// Returns a 64-bit integer representation of the boolean value.
///
/// Example:
///
/// ```moonbit
///   inspect(true.to_int64(), content="1")
///   inspect(false.to_int64(), content="0")
/// ```
pub fn to_int64(self : Bool) -> Int64 {
  if self {
    1
  } else {
    0
  }
}

///|
/// Converts a boolean value to an unsigned integer.
///
/// Parameters:
///
/// * `value` : The boolean value to be converted.
///
/// Returns an unsigned integer, where `true` is converted to 1 and `false` is
/// converted to 0.
///
/// Example:
///
/// ```moonbit
///   inspect(true.to_uint(), content="1")
///   inspect(false.to_uint(), content="0")
/// ```
pub fn to_uint(self : Bool) -> UInt {
  if self {
    1
  } else {
    0
  }
}

///|
/// Converts a boolean value to an unsigned 64-bit integer. Returns 1 for `true`
/// and 0 for `false`.
///
/// Parameters:
///
/// * `bool` : The boolean value to convert.
///
/// Returns an unsigned 64-bit integer representation of the boolean value.
///
/// Example:
///
/// ```moonbit
///   inspect(true.to_uint64(), content="1")
///   inspect(false.to_uint64(), content="0")
/// ```
pub fn to_uint64(self : Bool) -> UInt64 {
  if self {
    1
  } else {
    0
  }
}

///|
pub impl Hash for Bool with hash(self) {
  self.to_int()
}

///|
pub impl Hash for Bool with hash_combine(self, hasher) {
  hasher.combine_bool(self)
}

///|
/// Converts a boolean value to an unsigned 16-bit integer.
///
/// Parameters:
///
/// * `self` : The boolean value to be converted.
///
/// Returns an unsigned 16-bit integer, where `true` is converted to 1 and
/// `false` is converted to 0.
///
/// Example:
///
/// ```moonbit
/// inspect(true.to_uint16(), content="1")
/// inspect(false.to_uint16(), content="0")
/// ```
///
pub fn to_uint16(self : Bool) -> UInt16 {
  if self {
    1
  } else {
    0
  }
}

///|
/// Converts a boolean value to a 16-bit integer representation.
///
/// Parameters:
///
/// * `self` : The boolean value to be converted.
///
/// Returns a 16-bit integer, where `true` is converted to 1 and `false` is
/// converted to 0.
///
/// Example:
///
/// ```moonbit
/// inspect(true.to_int16(), content="1")
/// inspect(false.to_int16(), content="0")
/// ```
///
pub fn to_int16(self : Bool) -> Int16 {
  if self {
    1
  } else {
    0
  }
}
