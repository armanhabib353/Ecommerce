import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text("Order Review",
            style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              //Todo --- Items in cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: 32),

              //Todo ---- Coupon TextField
              const TCouponCode(),
              const SizedBox(height: 32),

              //Todo --- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(16),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    //TOdo --- Pricing
                    TBillingAmountSection(),
                    SizedBox(height: 16),

                    //TOdo --- Divider
                    Divider(),
                    SizedBox(height: 16),

                    //TOdo --- Payment Methods
                    TBillingPaymentSection(),

                    SizedBox(height: 16),
                    //TOdo --- Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      //Todo -=-- Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: "Payment Success!",
                  subTitle: "Your item will be shipped soon!",
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text("Checkout \$256")),
      ),
    );
  }
}
