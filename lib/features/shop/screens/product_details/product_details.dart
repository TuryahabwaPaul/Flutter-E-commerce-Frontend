import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/rating_share_widget.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-- 1. Product Image Slider
            const TProductImageSlider(),

            /// -- 2. Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: Tsizes.defaultSpace,
                  left: Tsizes.defaultSpace,
                  bottom: Tsizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Rating & Share Button
                  const TRatingAndShare(),

                  /// -- Price, Title, Stock  & Brand
                  const TProductMetaData(),

                  /// -- Attribute
                  const TProductAttributes(),

                  const SizedBox(
                    height: Tsizes.spaceBtwSections,
                  ),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: Tsizes.spaceBtwSections),

                  /// -- Description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: Tsizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for Green Nike Air Max shoes. It i s avery nice sneaker with a sleek and elegant design and good for morning workouts.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(height: Tsizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          icon: const Icon(Iconsax.arrow_right_3, size: 18),
                          onPressed: () =>
                              Get.to(() => const ProductReviewScreen())),
                    ],
                  ),
                  const SizedBox(height: Tsizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
