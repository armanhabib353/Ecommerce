import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Todo: Header --
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Todo: Appbar
                  THomeAppBar(),
                  SizedBox(height: 32),

                  //Todo: Searchbar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: 32),

                  //Todo: Categories
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Column(
                      children: [
                        //Todo: Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: 16),

                        //TOdo: Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Todo: Body
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  //Todo:  -- Promo Slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),
                  const SizedBox(height: 16),

                  // Todo: -- popular Products
                  TGridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const TProdctCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
