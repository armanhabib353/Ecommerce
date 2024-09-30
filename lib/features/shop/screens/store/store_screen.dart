import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: [TCartCounterIcon(onPressed: () {})],
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
                            return GestureDetector(
                              onTap: () {},
                              child: TRoundedContainer(
                                padding: const EdgeInsets.all(8),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    //TOdo: Icon
                                    Flexible(
                                      child: TCircularImage(
                                          image: TImages.clothIcon,
                                          isNetworkImage: false,
                                          backgroundColor: Colors.transparent,
                                          overlayColor:
                                              THelperFunctions.isDarkMode(
                                                      context)
                                                  ? TColors.white
                                                  : TColors.black),
                                    ),
                                    const SizedBox(height: 8),

                                    //TOdo: Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TBrandTitleWithVerifiedIcon(
                                              title: "Nike",
                                              brandTextSize: TextSizes.large),
                                          Text(
                                            "256 products",
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
