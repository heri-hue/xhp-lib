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

final xhp class figcaption extends element {
  use XHPChild\Validation;

  protected static function getChildrenDeclaration(): XHPChild\Constraint {
    return XHPChild\anyNumberOf(
      XHPChild\anyOf(XHPChild\pcdata(), XHPChild\category('%flow')),
    );
  }

  protected string $tagName = 'figcaption';
}
