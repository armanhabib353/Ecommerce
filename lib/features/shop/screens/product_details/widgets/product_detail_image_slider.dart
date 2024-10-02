import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/arman_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            //Todo --main large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                      child: Image(image: AssetImage(TImages.productImage5))),
                )),

            //TOdo === Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: 24,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemCount: 4,
                  itemBuilder: (_, index) => TRoundedImage(
                      border: Border.all(color: TColors.primary),
                      padding: const EdgeInsets.all(8),
                      height: 80,
                      backgroundColor: dark ? TColors.dark : TColors.white,
                      imageUrl: TImages.productImage10),
                ),
              ),
            ),

            //Todo --- APp bar for back arrow
            const TAppBar(
              showBackArrow: true,
              actions: [
                ArmanCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
