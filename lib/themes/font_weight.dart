import 'dart:io';

import 'package:flutter/material.dart';

/// Android(w400, w500 -> w600)
///
/// IOS(w400, w500)
class CSFontWeight {
  CSFontWeight._();

  static const w400 = FontWeight.w400;

  static final w500 = Platform.isAndroid ? FontWeight.w600 : FontWeight.w500;

  static const w700 = FontWeight.bold;
}
