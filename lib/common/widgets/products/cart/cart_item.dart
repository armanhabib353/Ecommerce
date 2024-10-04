import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Todo --- Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(8),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: 16),

        //Todo --- Title, Price and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: "Nike"),
              const Flexible(
                child: TProductTitleText(
                  title: "Black Sport shoes ",
                  maxLines: 1,
                ),
              ),

              //Todo -- Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Color ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: " Green ",
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: " Size ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: " EU 36",
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
