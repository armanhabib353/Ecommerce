import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Todo - Price & Sale Price
        Row(
          children: [
            //Todo- Sale Tag
            TRoundedContainer(
              radius: 8,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: 16),

            //Todo- Price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: 16),
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: 16 / 1.5),

        //Todo - Title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: 16 / 1.5),

        //Todo - Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: 16),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: 16 / 1.5),

        //Todo - Brand
        Row(
          children: [
            TCircularImage(
                width: 32,
                height: 32,
                overlayColor: darkMode ? TColors.white : TColors.black,
                image: TImages.shoeIcon),
            const TBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
