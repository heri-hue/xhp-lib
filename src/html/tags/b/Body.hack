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

final xhp class body extends element {
  use XHPChild\Validation;
  attribute
    string onafterprint,
    string onbeforeprint,
    string onbeforeunload,
    string onhashchange,
    string onmessage,
    string onmessageerror,
    string onoffline,
    string ononline,
    string onpagehide,
    string onpageshow,
    string onpopstate,
    string onrejectionhandled,
    string onstorage,
    string onunhandledrejection,
    string onunload;

  protected static function getChildrenDeclaration(): XHPChild\Constraint {
    return XHPChild\anyNumberOf(
      XHPChild\anyOf(XHPChild\pcdata(), XHPChild\category('%flow')),
    );
  }

  protected string $tagName = 'body';
}
