import 'package:ecommerce/common/styles/spacing_dart.dart';
import 'package:ecommerce/features/authentication/screens/login/Widgets/form_divider.dart';
import 'package:ecommerce/features/authentication/screens/login/Widgets/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/navigation_menu.dart';

import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Logo, Title, Subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                ),
                Text(
                  TTextStrings.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: Tsizes.sm),
                Text(
                  TTextStrings.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),

            /// Form
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Tsizes.spaceBtwSections),
                child: Column(
                  children: [
                    /// Email
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTextStrings.email),
                    ),
                    const SizedBox(height: Tsizes.spaceBtwInputFields),

                    /// Password
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTextStrings.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: Tsizes.spaceBtwInputFields / 2),

                    /// Remember Me and Forget Pasword
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Remember Me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(TTextStrings.rememberMe)
                          ],
                        ),

                        /// Forget Password
                        TextButton(
                          onPressed: () => Get.to(() => const ForgetPassword()),
                          child: const Text(TTextStrings.forgetPassword),
                        )
                      ],
                    ),
                    const SizedBox(height: Tsizes.spaceBtwSections),

                    /// Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const NavigationMenu()),
                        child: const Text(TTextStrings.signIn),
                      ),
                    ),
                    const SizedBox(height: Tsizes.spaceBtwItems),

                    /// Create Account
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () => Get.to(() => const SignupScreen()),
                        child: const Text(TTextStrings.createAccount),
                      ),
                    ),

                    const SizedBox(height: Tsizes.spaceBtwSections),
                  ],
                ),
              ),
            ),

            /// Divider
            TformDivider(
              dividerText: TTextStrings.orSignInWith.capitalize!,
            ),
            const SizedBox(height: Tsizes.spaceBtwSections),

            /// Footer
            const TSocialButtons(),
          ],
        ),
      ),
    ));
  }
}
