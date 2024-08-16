import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Tsizes.defaultSpace, vertical: Tsizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? Tcolors.darkerGrey : Tcolors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Tsizes.cardRadiusLg),
          topRight: Radius.circular(Tsizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: Tcolors.darkGrey,
                width: 40,
                height: 40,
                color: Tcolors.white,
              ),
              const SizedBox(width: Tsizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: Tsizes.spaceBtwItems),
              const TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: Tcolors.black,
                width: 40,
                height: 40,
                color: Tcolors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(Tsizes.md),
                side: const BorderSide(color: Tcolors.black),
                backgroundColor: Tcolors.black,
              ),
              child: const Text('Add to Cart')),
        ],
      ),
    );
  }
}
