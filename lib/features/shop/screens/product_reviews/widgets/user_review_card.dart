import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1)),
              const SizedBox(width: 16),
              Text("John Doe", style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      const SizedBox(height: 16),
      //Todo ----- Review
      Row(
        children: [
          const TRatingBarIndicator(rating: 4),
          const SizedBox(width: 16),
          Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
      //todo -- readmore text
      const SizedBox(height: 16),
      const ReadMoreText(
        "This method will save memory by building items once it becomes necessary. This way they won't be built if they're not currently meant to be visible on screen. It can be used to build different child item widgets related to content or by item index. This method will save memory by building items once it becomes necessary. This way they won't be built if they're not currently meant to be visible on screen. It can be used to build different child item widgets related to content or by item index.",
        trimLines: 2,
        trimMode: TrimMode.Line,
        trimCollapsedText: " Show More",
        trimExpandedText: " Less",
        moreStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        lessStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
      ),
      const SizedBox(height: 16),

      //TOdo - -- Company Review
      TRoundedContainer(
        backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Aiysha Store",
                      style: Theme.of(context).textTheme.titleMedium),
                  Text("02 Nov, 2023",
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              //todo -- readmore text
              const SizedBox(height: 16),
              const ReadMoreText(
                "Thank you for your Review",
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: " Show More",
                trimExpandedText: " Less",
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 32),
    ]);
  }
}
