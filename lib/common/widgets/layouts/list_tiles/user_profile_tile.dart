import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Denis Innocent',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Tcolors.white),
      ),
      subtitle: Text(
        'powerfix.electric@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: Tcolors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: Tcolors.white),
      ),
    );
  }
}
