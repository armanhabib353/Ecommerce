import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems(
      {super.key, this.showAddRemoveButtons = true, this.itemCount = 2});

  final bool showAddRemoveButtons;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: 32),
      itemCount: itemCount,
      itemBuilder: (_, index) => Column(
        children: [
          // todo : Cart Item
          const TCartItem(),
          if (showAddRemoveButtons) const SizedBox(height: 16),

          // Todo =- Add Remove Button Row with total price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Add Remove Buttons
                Row(
                  children: [
                    SizedBox(width: 70),
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256')
              ],
            ),
        ],
      ),
    );
  }
}
