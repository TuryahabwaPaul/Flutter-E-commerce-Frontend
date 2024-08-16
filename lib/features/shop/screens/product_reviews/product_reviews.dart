import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom _shapes/appbar/appbar.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- App Bar
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text(
          ' Reviews & Ratings',
        ),
      ),

      /// -- Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Tsizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Ratings and Reviews are verified and are from people who use the same type of device that you use."),
            const SizedBox(height: Tsizes.spaceBtwItems),

            /// Overall Product Ratings
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 3.5),
            Text("12,488", style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: Tsizes.spaceBtwSections),

            /// User Reviews
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
