import 'package:ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              //TOdo: 1-- Brands
              const TBrandShowcase(images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3
              ]),
              const TBrandShowcase(images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3
              ]),
              const SizedBox(height: 16),

              //Todo: 1-- Products
              TSectionHeading(title: "You might like", onPressed: () {}),
              const SizedBox(height: 16),

              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProdctCardVertical()),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
