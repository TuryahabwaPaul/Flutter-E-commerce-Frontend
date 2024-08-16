import 'package:ecommerce/common/widgets/custom%20_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: Tsizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.more),
            ),
          ],
        ),

        const SizedBox(height: Tsizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: Tsizes.spaceBtwItems),
            Text('01 Nov 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: Tsizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is intuitive. I was able to navigate and make purchases seamlessly. Great job',
          trimLines: 1,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Tcolors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Tcolors.primary),
        ),

        const SizedBox(height: Tsizes.spaceBtwItems),

        /// Company Review
        TRoundedContainer(
          backgroundColor: dark ? Tcolors.darkerGrey : Tcolors.grey,
          child: Padding(
            padding: const EdgeInsets.all(Tsizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("02 Nov 2023",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: Tsizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of the app is intuitive. I was able to navigate and make purchases seamlessly. Great job. ',
                  trimLines: 1,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Tcolors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Tcolors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: Tsizes.spaceBtwSections),
      ],
    );
  }
}
