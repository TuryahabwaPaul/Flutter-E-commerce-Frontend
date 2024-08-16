import 'package:ecommerce/common/widgets/custom%20_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// -- Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: Tsizes.sm,
              backgroundColor: Tcolors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: Tsizes.sm, vertical: Tsizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Tcolors.black),
              ),
            ),
            const SizedBox(width: Tsizes.spaceBtwItems),

            /// -- Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: Tsizes.spaceBtwItems),
            const TProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),

        const SizedBox(height: Tsizes.spaceBtwItems / 2),

        /// Title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(
          height: Tsizes.spaceBtwItems,
        ),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'status'),
            const SizedBox(width: Tsizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        const SizedBox(
          height: Tsizes.spaceBtwItems / 2,
        ),

        /// Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? Tcolors.white : Tcolors.black,
            ),
            const TBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
