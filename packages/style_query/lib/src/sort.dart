/*
 * Copyright 2021 styledart.dev - Mehmet Yaz
 *
 * Licensed under the GNU AFFERO GENERAL PUBLIC LICENSE,
 *    Version 3 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       https://www.gnu.org/licenses/agpl-3.0.en.html
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import 'access_language.dart';

///
class SortExpression<L extends AccessLanguage> {

  ///
  SortExpression(this.sorts);

  /// AccessEvent is sort by key.<br>
  /// returns true if sorted ascending, <br>
  /// returns false if sorted descending, <br>
  /// returns null if not sorted by this key.
  bool? sortedByAsc(String key) {
    if (sorts.containsKey(key)) {
      return sorts[key] == Sorting.ascending;
    }
    return null;
  }

  /// AccessEvent is sort by key.<br>
  /// returns true if sorted descending, <br>
  /// returns false if sorted ascending, <br>
  /// returns null if not sorted by this key.
  bool? sortedByDesc(String key) {
    if (sorts.containsKey(key)) {
      return sorts[key] == Sorting.descending;
    }
    return null;
  }

  ///
  final Map<String, Sorting> sorts;
}

///
enum Sorting {
  ///
  ascending,

  ///
  descending
}
