import 'package:ecommerce/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear),
            )
          ],
        ),
        body: SingleChildScrollView(
          // Padding to Give Equal Space on all sides in all screens
          child: Padding(
            padding: const EdgeInsets.all(Tsizes.defaultSpace),
            child: Column(
              children: [
                /// Image
                Image(
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6,
                ),

                const SizedBox(
                  height: Tsizes.spaceBtwSections,
                ),

                /// TiTle & Subtitle
                Text(TTextStrings.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: Tsizes.spaceBtwItems),
                Text('support@codingwitht.com',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: Tsizes.spaceBtwItems),
                Text(
                  TTextStrings.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: Tsizes.spaceBtwSections,
                ),

                ///Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SucessScreen(
                            image: TImages.staticSucessIllustration,
                            title: TTextStrings.yourAccountCreatedTitle,
                            subTitle: TTextStrings.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: const Text(TTextStrings.tContinue)),
                ),
                const SizedBox(
                  height: Tsizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(TTextStrings.resendEmail),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
