import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal ', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 256.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(
          height: Tsizes.spaceBtwItems / 2,
        ),

        /// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fees ',
                style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 0.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(
          height: Tsizes.spaceBtwItems / 2,
        ),

        /// Tax Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fees ', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 6.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(
          height: Tsizes.spaceBtwItems / 2,
        ),

        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total ', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 256.0', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
