import 'package:ecommerce/common/widgets/custom%20_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom _shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Container
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  THomeAppBar(),
                  SizedBox(height: Tsizes.spaceBtwSections),

                  /// -- Searchbar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: Tsizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: Tsizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Section Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),

                        SizedBox(height: Tsizes.spaceBtwItems),

                        /// Categories
                        THomeCategories()
                      ],
                    ),
                  ),

                  SizedBox(height: Tsizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(Tsizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promobanner1,
                      TImages.promobanner2,
                      TImages.promobanner3
                    ],
                  ),

                  const SizedBox(
                    height: Tsizes.spaceBtwSections,
                  ),

                  /// Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),

                  const SizedBox(height: Tsizes.spaceBtwSections),

                  /// Popular Products
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
