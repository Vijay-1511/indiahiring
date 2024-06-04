import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get kreon {
    return copyWith(
      fontFamily: 'Kreon',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get asap {
    return copyWith(
      fontFamily: 'Asap',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body style
  static get bodySmallAsap => theme.textTheme.bodySmall!.asap;
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
      );
  static get bodySmallGray80001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 12.fSize,
      );
// Kreon text style
  static get kreonBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).kreon;
// Label text style
  static get labelLargeInterBlack900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
}
