import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: Tsizes.md,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? Tcolors.darkerGrey
              : Tcolors.light,
          color: THelperFunctions.isDarkMode(context)
              ? Tcolors.white
              : Tcolors.black,
        ),
        const SizedBox(width: Tsizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: Tsizes.spaceBtwItems),
        const TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: Tsizes.md,
          backgroundColor: Tcolors.primary,
          color: Tcolors.white,
        ),
      ],
    );
  }
}
