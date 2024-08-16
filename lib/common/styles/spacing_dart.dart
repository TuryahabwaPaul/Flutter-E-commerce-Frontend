import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: Tsizes.appBarHeight,
    left: Tsizes.defaultSpace,
    right: Tsizes.defaultSpace,
    bottom: Tsizes.defaultSpace,
  );
}
