import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(Tsizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? Tcolors.darkerGrey
              : Tcolors.light,
        ),
        const SizedBox(width: Tsizes.spaceBtwItems),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike Air Max 270'),
              const Flexible(
                child: TProductTitleText(
                  title: 'Black Sports Shoes',
                  maxLines: 1,
                ),
              ),

              /// -- Product Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Size : ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: '39',
                        style: Theme.of(context).textTheme.bodyLarge),
                    const TextSpan(
                        text: ' | ', style: TextStyle(color: Tcolors.black)),
                    TextSpan(
                        text: 'Color : ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Black',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
