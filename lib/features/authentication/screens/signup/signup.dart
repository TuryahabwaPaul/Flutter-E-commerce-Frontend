import 'package:ecommerce/features/authentication/screens/login/Widgets/form_divider.dart';
import 'package:ecommerce/features/authentication/screens/login/Widgets/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Tsizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(TTextStrings.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),

                const SizedBox(height: Tsizes.spaceBtwSections),

                /// Form
                const TSignupForm(),

                const SizedBox(height: Tsizes.spaceBtwSections),

                /// Divider
                TformDivider(
                    dividerText: TTextStrings.orSignInWith.capitalize!),

                const SizedBox(height: Tsizes.spaceBtwSections),

                /// Social Buttons
                const TSocialButtons(),
              ],
            ),
          ),
        ));
  }
}
