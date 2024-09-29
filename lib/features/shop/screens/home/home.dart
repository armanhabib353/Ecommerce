import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Todo: Header --
            TPrimaryHeaderContainer(
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
          ],
        ),
      ),
    );
  }
}
