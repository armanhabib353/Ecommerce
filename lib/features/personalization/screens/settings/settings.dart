import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container_2.dart';
import 'package:ecommerce/common/widgets/layouts/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/layouts/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/shop/screens/order/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Todo: -- Header
            T2PrimaryHeaderContainer(
                child: Column(
              children: [
                //TOdo: AppBar
                TAppBar(
                  title: Text("Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white)),
                ),
                const SizedBox(height: 32),

                //Todo: User Prifile card
                TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),

                const SizedBox(height: 32),
              ],
            )),

            //TOdo : -- Body
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  //Todo: account settings
                  const TSectionHeading(
                      title: "Account Settings", showActionButton: false),
                  const SizedBox(height: 16),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subTitle: "Set Shopping Delivery Address",
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My cart",
                    subTitle: "Add, remove products and move to checkout",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Order",
                    subTitle: "In-progress and Completed Orders",
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification message",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),

                  //TOdo : ---- App Settings
                  const SizedBox(height: 32),
                  const TSectionHeading(
                      title: "App Settings", showActionButton: false),
                  const SizedBox(height: 16),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subTitle: "Upload Data to your cloud Firebase",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geo - Location",
                    subTitle: "See recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set Image quality to be seen",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
