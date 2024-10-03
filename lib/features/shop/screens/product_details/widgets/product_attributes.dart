import 'package:ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //TOdo --- Selected Attribute priceing and description
        TRoundedContainer(
          padding: const EdgeInsets.all(16),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              //Todo: -- Title, Price and Stock Status
              Row(
                children: [
                  const TSectionHeading(
                      title: "Variation", showActionButton: false),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: "Price : ", smallSize: true),
                          //Todo -- Actual Price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.red),
                          ),
                          const SizedBox(width: 16),
                          //Todo -- Sale Price
                          const TProductPriceText(price: "15"),
                        ],
                      ),
                      //Todo --- Stock
                      Row(
                        children: [
                          const TProductTitleText(
                              title: "Stock ", smallSize: true),
                          Text(" In Stock",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .apply(color: Colors.green)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              //Todo: -- Variation Description
              const TProductTitleText(
                title:
                    "This is the Description of the product and it can go up to max 4 lines.",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        //TOdo --- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false),
            const SizedBox(height: 16),
            Wrap(
              children: [
                TChoiceChip(
                    text: "Green", selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: "Blue", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Yellow", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Pink", selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size", showActionButton: false),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: "EU 34", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "EU 36", selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: "EU 38", selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
