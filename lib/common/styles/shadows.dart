import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: Tcolors.darkGrey.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 8,
    spreadRadius: 7,
  );

  static final horizontalProductShadow = BoxShadow(
    color: Tcolors.darkGrey.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
}
