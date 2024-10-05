import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/products/products_cards/product_card_horizontal.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Sports Shirts"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              //Todo -- banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner3,
                applyImageRadius: true,
              ),
              const SizedBox(height: 32),

              //todo --- sub - categories
              Column(
                children: [
                  //todo - Heading
                  TSectionHeading(title: "Sports shirts", onPressed: () {}),
                  const SizedBox(height: 8),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        separatorBuilder: (_, __) => const SizedBox(width: 16),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) =>
                            const TProductCardHorizontal()),
                  ),

                  // const TProductCardHorizontal(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
