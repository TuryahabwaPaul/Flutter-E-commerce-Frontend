import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalimageText extends StatelessWidget {
  const TVerticalimageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Tcolors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Tsizes.spaceBtwItems),
        child: Column(
          children: [
            ///  Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(
                Tsizes.sm,
              ),
              decoration: BoxDecoration(
                  color:
                      backgroundColor ?? (dark ? Tcolors.black : Tcolors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? Tcolors.light : Tcolors.dark,
                ),
              ),
            ),

            /// Text
            const SizedBox(
              height: Tsizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
