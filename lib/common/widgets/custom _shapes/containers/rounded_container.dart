import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.height,
    this.backgroundColor = Tcolors.white,
    this.padding,
    this.width,
    this.radius = Tsizes.cardRadiusLg,
    this.showBorder = false,
    this.child,
    this.borderColor = Tcolors.borderPrimary,
    this.margin,
  });
  final double? height;
  final double? width;
  final double radius;
  final bool showBorder;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
