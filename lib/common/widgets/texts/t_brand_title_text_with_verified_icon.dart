import 'package:ecommerce/common/widgets/texts/t_brand_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = Tcolors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
              title: title,
              color: textColor,
              textAlign: textAlign,
              maxLines: maxLines,
              brandTextSize: brandTextSize),
        ),
        const SizedBox(
          width: Tsizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: Tcolors.primary,
          size: Tsizes.iconXs,
        ),
      ],
    );
  }
}
