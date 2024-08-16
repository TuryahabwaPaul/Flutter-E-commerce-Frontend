import 'package:ecommerce/common/widgets/custom%20_shapes/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpace),
          child: Column(
            children: [
              /// -- Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('change Profile Picture'),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: Tsizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: Tsizes.spaceBtwItems),

              /// -- Heading Profile Information
              const TSectionHeading(
                title: 'Profile information',
                showActionButton: false,
              ),
              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

              TProfileMenu(
                title: 'Name',
                onPressed: () {},
                value: 'Denis Innocent',
              ),
              TProfileMenu(
                title: 'Username',
                onPressed: () {},
                value: 'Denis',
              ),

              const SizedBox(height: Tsizes.spaceBtwItems),
              const Divider(),

              const SizedBox(height: Tsizes.spaceBtwItems),

              /// Heading Personal Information
              const TSectionHeading(
                title: 'Personal information',
                showActionButton: false,
              ),
              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

              TProfileMenu(
                  title: 'User ID',
                  icon: Iconsax.copy,
                  value: '46798',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Email',
                  value: 'denisinnocentk@gmail.com',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Phone Number',
                  value: '+256-777-777-777',
                  onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                  title: 'Date of Birth',
                  value: '24 Nov 2000',
                  onPressed: () {}),
              const Divider(),

              const SizedBox(height: Tsizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Create Account',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
