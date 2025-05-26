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
}
