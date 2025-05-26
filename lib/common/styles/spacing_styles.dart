import 'package:coolvashop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyles {
  TSpacingStyles._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
  );

  static const SizedBox smSpace = SizedBox(height: TSizes.sm);

  static const SizedBox spacingBtwItemsVertical =
      SizedBox(height: TSizes.spaceBtwItems);

  static const SizedBox spacingBtwItemsHorizontal =
      SizedBox(width: TSizes.spaceBtwItems);
}
