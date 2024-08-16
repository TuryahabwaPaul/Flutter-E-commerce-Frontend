import 'package:ecommerce/common/widgets/custom%20_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Tsizes.productImageRadius),
        color: dark ? Tcolors.darkerGrey : Tcolors.lightContainer,
      ),
      child: Row(
        children: [
          /// -- Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(Tsizes.sm),
            backgroundColor: dark ? Tcolors.dark : Tcolors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),
                ),

                /// -- Sale Tag

                Positioned(
                  top: 10,
                  child: TRoundedContainer(
                    radius: Tsizes.sm,
                    backgroundColor: Tcolors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: Tsizes.sm, vertical: Tsizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Tcolors.black),
                    ),
                  ),
                ),

                /// -- Favorite Icon Button
                const Positioned(
                  top: 10,
                  right: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          /// -- Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: Tsizes.sm, left: Tsizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt',
                        smallSize: true,
                      ),
                      SizedBox(height: Tsizes.spaceBtwItems / 2),
                      TBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing

                      const Flexible(child: TProductPriceText(price: '256.0')),

                      /// Add to Cart
                      Container(
                        decoration: const BoxDecoration(
                          color: Tcolors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Tsizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(Tsizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: Tsizes.iconLg * 1.2,
                          height: Tsizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: Tcolors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
