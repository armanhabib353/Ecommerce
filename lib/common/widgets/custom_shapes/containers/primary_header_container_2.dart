import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class T2PrimaryHeaderContainer extends StatelessWidget {
  const T2PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,

        //Todo: if (size.isFinit': is not true.in stack] error occurred -> Read README.md file at)

        child: Stack(
          children: [
            //Todo: --- Background Custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                  background: TColors.white.withOpacity(0.1)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                  background: TColors.white.withOpacity(0.1)),
            ),
            child
          ],
        ),
      ),
    );
  }
}
