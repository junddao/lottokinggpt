import 'package:lottokinggpt/index.dart';

extension TextStyleExtension on TextStyle {
  /// 스타일 색상 추가
  ///
  /// #ffBA1628
  ///
  /// argb(255, 186, 22, 40)
  TextStyle get primary => copyWith(color: TColors.primary);

  TextStyle get backgroundColor => copyWith(color: TColors.backGroundColor);

  TextStyle get white => copyWith(color: TColors.white);

  /// 문자열 높이 조절
  ///
  /// height 1.0
  TextStyle get h1_0 => copyWith(height: 1.0);

  /// 문자열 높이 조절
  ///
  /// height 1.5
  TextStyle get h1_5 => copyWith(height: 1.5);

  /// 문자열 높이 조절
  ///
  /// height 2.0
  TextStyle get h2_0 => copyWith(height: 2.0);

  /// 문자열 높이 조절
  ///
  /// regular
  TextStyle get regular => copyWith(fontWeight: CSFontWeight.w400);

  /// 문자열 높이 조절
  ///
  /// medium
  TextStyle get medium => copyWith(fontWeight: CSFontWeight.w500);
}
