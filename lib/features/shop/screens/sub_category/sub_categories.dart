import 'package:ecommerce/common/widgets/custom%20_shapes/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpace),
          child: Column(
            children: [
              /// -- Banner
              const TRoundedImage(
                  width: double.infinity,
                  imageUrl: TImages.promobanner3,
                  applyImageRadius: true),

              const SizedBox(height: Tsizes.spaceBtwSections),

              /// -- Sub-Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: Tsizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: Tsizes.spaceBtwItems),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
