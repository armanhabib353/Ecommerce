import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

//TOdo: --- TBrandShowcase
class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(8),
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          //Todo: 2 -- Brands With products Count
          const TBrandCard(showBorder: false),
          const SizedBox(height: 16),

          //Todo: 2-- Brand top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

//TOdo: Widgets
Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 8),
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        child: Image(image: AssetImage(image), fit: BoxFit.contain)),
  );
}
