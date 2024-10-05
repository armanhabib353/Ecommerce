import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/arman_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: dark ? TColors.darkerGrey : TColors.white),
      child: Row(
        children: [
          //todo -- Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(8),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                //todo -- Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),
                ),

                //Todo: sub 1 - Sale Tag
                Positioned(
                  top: 5,
                  left: 5,
                  child: TRoundedContainer(
                    radius: 16,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                //Todo: sub 1 - Favourite Icon Button
                const Positioned(
                  top: -5,
                  right: 0,
                  // child: TCircularIcon(
                  //   icon: Iconsax.heart5,
                  //   color: Colors.red,
                  // ),
                  child: ArmanCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),

          //todo --- Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 8),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                          title: "Green Nike Half Sleeves shirt",
                          smallSize: true),
                      SizedBox(height: 8),
                      TBrandTitleWithVerifiedIcon(title: "Nike"),
                    ],
                  ),
                  const Spacer(),

                  //Todo: -- Price Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Todo -- price show
                      const Flexible(child: TProductPriceText(price: '256.00')),

                      //Todo -- add button
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(16),
                            )),
                        child: const SizedBox(
                          height: 35,
                          width: 35,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
