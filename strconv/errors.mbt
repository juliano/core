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
pub(all) suberror StrConvError String

///|
pub impl Show for StrConvError with output(self, logger) {
  match self {
    StrConvError(err) => logger.write_string(err)
  }
}

///|
let range_err_str = "value out of range"

///|
let syntax_err_str = "invalid syntax"

///|
let base_err_str = "invalid base"

///|
fn[T] range_err() -> T raise StrConvError {
  raise StrConvError(range_err_str)
}

///|
fn[T] syntax_err() -> T raise StrConvError {
  raise StrConvError(syntax_err_str)
}

///|
fn[T] base_err() -> T raise StrConvError {
  raise StrConvError(base_err_str)
}
