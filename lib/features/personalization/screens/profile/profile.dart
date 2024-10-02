import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      //TOdo: Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              //Todo: Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              //TOdo: Details
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 16),

              //TOdo: ---- Heading Profile info
              const TSectionHeading(
                  title: "Profile Information", showActionButton: false),
              const SizedBox(height: 16),

              TProfileMenu(
                  onPressed: () {}, title: 'Name', value: 'Arman Habib'),
              TProfileMenu(
                  onPressed: () {}, title: 'Username', value: 'Armanbabib'),

              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 16),

              //TOdo: ---- Heading Personal info
              const TSectionHeading(
                  title: "Personal Information", showActionButton: false),
              const SizedBox(height: 16),

              TProfileMenu(
                  onPressed: () {},
                  title: 'User ID',
                  value: '45685125',
                  icon: Iconsax.copy),
              TProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: 'armanhabib353@gmail.com'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'Phone Number',
                  value: '+880 1835039868'),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'Date of Birth',
                  value: '30 Dec 1996'),

              const Divider(),
              const SizedBox(height: 16),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Close Account",
                      style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
