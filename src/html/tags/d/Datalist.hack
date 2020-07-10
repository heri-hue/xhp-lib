/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\XHP\HTML;

use namespace Facebook\XHP\ChildValidation as XHPChild;

final xhp class datalist extends element {
  use XHPChild\Validation;
  category %flow, %phrase;

  protected static function getChildrenDeclaration(): XHPChild\Constraint {
    return XHPChild\anyOf(
      XHPChild\atLeastOneOf(XHPChild\category('%phrase')),
      XHPChild\anyNumberOf(XHPChild\ofType<option>()),
    );
  }

  protected string $tagName = 'datalist';
}