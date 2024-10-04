import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text("Store", style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.dark
                      : Colors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                      padding: const EdgeInsets.all(24),
                      child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            //Todo: Search Bar
                            const SizedBox(height: 16),
                            const TSearchContainer(
                                text: 'text',
                                showBorder: true,
                                showBackground: false,
                                padding: EdgeInsets.zero),
                            const SizedBox(height: 32),

                            //Todo: Featured Brands
                            TSectionHeading(
                                title: "Featured Brands", onPressed: () {}),
                            const SizedBox(height: 16 / 1.5),

                            TGridLayout(
                                itemCount: 4,
                                mainAxisExtent: 80,
                                itemBuilder: (_, index) {
                                  //Todo: in the Backend Tutorial we will pas the Each brand & onPressed Event Also
                                  return const TBrandCard();
                                })
                          ])),
                  //Todo: Tabs --
                  bottom: const TTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]))
            ];
          },
          //Todo: body
          body: const TabBarView(children: [
            //Todo: - Sports Tab
            TCategoryTab(),

            //Todo: -  Furniture Tab
            TCategoryTab(),

            //Todo: -  Electronics Tab
            TCategoryTab(),

            //Todo: -  Clothes Tab
            TCategoryTab(),

            //Todo: - Cosmetics Tab
            TCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
