// Place fonts/SWIRIcons.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: SWIRIcons
//      fonts:
//       - asset: fonts/SWIRIcons.ttf
import 'package:flutter/widgets.dart';

class SWIRIcons {
  SWIRIcons._();

  static const String _fontFamily = 'SWIRIcons';

  static const IconData back = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData menu_hamburger = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData planet = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData settings_outline = IconData(0xe904, fontFamily: _fontFamily);
}
