import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container_2.dart';
import 'package:flutter/material.dart';

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
                TAppBar(
                  title: Text("Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white)),
                ),
                const SizedBox(height: 32),
              ],
            ))

            //TOdo : -- Body
          ],
        ),
      ),
    );
  }
}
