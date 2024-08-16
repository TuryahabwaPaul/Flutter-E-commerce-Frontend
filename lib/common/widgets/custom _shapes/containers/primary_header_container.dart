import 'package:ecommerce/common/widgets/custom%20_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom%20_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: Tcolors.primary,

        /// -- If (size.isFinite': is not true.inStack) error occured -> Read README.md file at [DESIGN ERRORS] # 1

        child: Stack(
          children: [
            /// -- Background Custom shapes
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                  backgroundColor: Tcolors.textWhite.withOpacity(0.1)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                backgroundColor: Tcolors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
