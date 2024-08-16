import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_price_text.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: Tsizes.spaceBtwSections),
      itemCount: 4,
      itemBuilder: (_, __) => Column(
        children: [
          // Cart Item
          const TCartItem(),

          if (showAddRemoveButtons)
            const SizedBox(height: Tsizes.spaceBtwItems),

          /// Add Remove Button with Total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// -- Extra Space
                    SizedBox(width: 70),

                    /// -- Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                /// Product Total Price
                TProductPriceText(price: '256')
              ],
            ),
        ],
      ),
    );
  }
}
