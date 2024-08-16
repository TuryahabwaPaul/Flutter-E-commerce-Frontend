import 'package:ecommerce/common/styles/spacing_dart.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.onPressed});

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight * 2,
            child: Column(
              children: [
                /// Image

                Image(
                  image: AssetImage(image),
                  width: THelperFunctions.screenWidth() * 0.6,
                ),

                const SizedBox(
                  height: Tsizes.spaceBtwSections,
                ),

                /// Title & Subtitle
                Text(title, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: Tsizes.spaceBtwItems),
                Text(subTitle, style: Theme.of(context).textTheme.bodyMedium),

                const SizedBox(
                  height: Tsizes.spaceBtwSections,
                ),

                /// Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(TTextStrings.tContinue),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
