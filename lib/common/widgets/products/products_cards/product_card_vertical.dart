import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/arman_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProdctCardVertical extends StatelessWidget {
  const TProdctCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    //TOdo: Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [
              TShadowsStyle.horizontalProductShadow
            ],
            borderRadius: BorderRadius.circular(16),
            // color: dark ? const Color.fromARGB(255, 78, 167, 140) : TColors.white,
            color:
                dark ? const Color.fromARGB(255, 49, 151, 126) : TColors.white),
        child: Column(
          children: [
            //TOdo: -- 1 ---- Thumbnail, wishlist button, discount tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(8),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Todo: sub 1 - Thumbail Image
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  //Todo: sub 1 - Sale Tag
                  Positioned(
                    top: 12,
                    left: 5,
                    child: TRoundedContainer(
                      radius: 16,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
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
                    top: 0,
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

            const SizedBox(height: 2),

            //Todo: -- 2---- Details
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                      title: "Green Nike Air Shoes", smallSize: true),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text("Nike",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: 4),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: 12,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Todo -- price show
                      const TProductPriceText(price: '40'),

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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
