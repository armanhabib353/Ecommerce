import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Todo : Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Todo: Form
              Form(
                child: Column(
                  children: [
                    //Todo: First & Last Name
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    //Todo: User name
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    //Todo: Emails
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.email,
                          prefixIcon: Icon(Iconsax.direct)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    //Todo: Phone Number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.phoneNo,
                          prefixIcon: Icon(Iconsax.call)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    //Todo: Password
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.password,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    //Todo: Terms & Conditions Checkbox
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {}),
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: TTexts.iAgreeTo,
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: TTexts.privacyPolicy,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? TColors.light
                                          : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.light
                                          : TColors.primary,
                                    ),
                              ),
                              TextSpan(
                                  text: TTexts.and,
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: TTexts.termsOfUse,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? TColors.light
                                          : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.light
                                          : TColors.primary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    //Todo: Sign Up Button

                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: dark
                                  ? TColors.primary
                                  : const Color.fromARGB(255, 75, 189, 255),
                            ),
                            onPressed: () {},
                            child: const Text(TTexts.createAccount))),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Todo: Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              //TOdo: Social Button
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
