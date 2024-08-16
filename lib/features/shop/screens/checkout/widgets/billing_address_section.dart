import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Denis Innocent', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: Tsizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: Tsizes.spaceBtwItems),
            Text('+256 010 12345',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: Tsizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Iconsax.location, color: Colors.grey, size: 16),
            const SizedBox(width: Tsizes.spaceBtwItems),
            Expanded(
              child: Text(
                '1234 Main Street, London, UK',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
