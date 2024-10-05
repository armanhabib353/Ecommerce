import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.light,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Todo - Row 1
            Row(
              children: [
                //Todo------- Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: 8),

                //Todo -- Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text("07 Nov, 2027",
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                //Todo -- Icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.arrow_right_34, size: 16)),
              ],
            ),

            const SizedBox(height: 8),

            //Todo - Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Todo------- Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: 8),

                      //Todo -- Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order",
                                style: Theme.of(context).textTheme.labelMedium),
                            Text("#1256",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //Todo------- Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: 8),

                      //Todo -- Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Date",
                                style: Theme.of(context).textTheme.labelMedium),
                            Text("03 Feb, 2024",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
