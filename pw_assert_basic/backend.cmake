# Copyright 2022 The Pigweed Authors
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
include_guard(GLOBAL)

include($ENV{PW_ROOT}/pw_build/pigweed.cmake)

# Handler backend for the pw_assert_basic module which implements
# pw_assert_basic_HandleFailure, this defaults to the basic_handler.
#
# Note: Don't confuse pw_assert.check_BACKEND and
# pw_assert_basic.handler_BACKEND:
# 1) pw_assert.check_BACKEND must be set to pw_assert_basic.check_backend in
#    order to use this module which ensures that asserts always invoke
#    pw_assert_basic_HandleFailure.
# 2) pw_assert_basic.handler_BACKEND allows you to switch out the
#    implementation of the handler which is invoked (i.e.
#    pw_assert_basic_HandleFailure).
pw_add_backend_variable(pw_assert_basic.handler_BACKEND)
