import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Todo 1 ---- Product Image Slider
            TProductImageSlider(),

            //Todo 2 ----- Product Details
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Column(
                children: [
                  //TOdo: - Rating & Share
                  TRatingAndShare(),

                  //TOdo: - Price, Title, Stock, & ZBrand
                  TProductMetaData()

                  //TOdo: - Attributes
                  //TOdo: - Checkout Button
                  //TOdo: - Description
                  //TOdo: - Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
