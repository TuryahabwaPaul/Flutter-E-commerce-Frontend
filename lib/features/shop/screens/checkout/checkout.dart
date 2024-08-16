import 'package:ecommerce/common/widgets/custom%20_shapes/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom%20_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpace),
          child: Column(
            children: [
              /// - -Items in Cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(
                height: Tsizes.spaceBtwSections,
              ),

              /// -- Coupon TextField
              const TCouponCode(),

              const SizedBox(
                height: Tsizes.spaceBtwSections,
              ),

              /// -- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(Tsizes.md),
                backgroundColor: dark ? Tcolors.black : Tcolors.white,
                child: const Column(
                  children: [
                    /// -- Pricing
                    TBillingAmountSection(),
                    SizedBox(height: Tsizes.spaceBtwItems),

                    /// -- Divider
                    Divider(),
                    SizedBox(height: Tsizes.spaceBtwItems),

                    /// -- Payment Methods
                    TBillingPaymentSection(),
                    SizedBox(height: Tsizes.spaceBtwItems),

                    /// -- Address
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// -- Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Tsizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SucessScreen(
                    image: TImages.successfulPaymentIcon,
                    title: 'Payment  Successful',
                    subTitle: 'Your item will be shipped soon!',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  ),
                ),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
