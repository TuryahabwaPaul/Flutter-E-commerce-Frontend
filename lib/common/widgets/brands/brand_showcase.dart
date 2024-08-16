import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../custom _shapes/containers/rounded_container.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: Tcolors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(Tsizes.md),
      margin: const EdgeInsets.only(bottom: Tsizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products count
          const TBrandCard(showBorder: false),
          const SizedBox(height: Tsizes.spaceBtwItems),

          /// Brand  Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? Tcolors.darkerGrey
            : Tcolors.light,
        margin: const EdgeInsets.only(right: Tsizes.sm),
        padding: const EdgeInsets.all(Tsizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
