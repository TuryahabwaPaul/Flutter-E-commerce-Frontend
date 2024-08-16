import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/custom%20_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Tsizes.productImageRadius),
          color: dark ? Tcolors.darkerGrey : Tcolors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, WishList Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(Tsizes.sm),
              backgroundColor: dark ? Tcolors.dark : Tcolors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
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

                  /// -- Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Tsizes.spaceBtwItems / 2),

            /// -- Details
            const Padding(
              padding: EdgeInsets.only(left: Tsizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: Tsizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),

            // Todo: Add Spacer() here to keep the height of each box same in case 1 or 2 lines of heading
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: Tsizes.sm),
                  child: TProductPriceText(price: '35.0', isLarge: true),
                ),

                /// Add to Cart Button

                Container(
                  decoration: const BoxDecoration(
                    color: Tcolors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Tsizes.cardRadiusMd),
                      bottomRight: Radius.circular(Tsizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: Tsizes.iconLg * 1.2,
                    height: Tsizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: Tcolors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
