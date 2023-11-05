import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.48),
      );
  static get bodyLargeBluegray90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.64),
        fontSize: 18.fSize,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.54),
      );
  // Headline text style
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallBluegray900_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallOrange600 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.orange600,
      );
  // Title text style
  static get titleLargeDMSansWhiteA700 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPlusJakartaSansOrange600 =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        color: appTheme.orange600,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
