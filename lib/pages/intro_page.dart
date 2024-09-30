import 'package:ecommerce_app/components/my_button.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // gif
            const Icon(Icons.shop, size: 120,),
            // minimal shop text
            const Text(
              "MINIMAL SHOP",
              style: kIntroPageTitle,
            ),

            const SizedBox(
              height: 10,
            ),

            // sub title
            const Text(
              "Made with Flutter 🤍",
              style: kIntroPageSubTitle,
            ),

            // button
            MyButton(onTap: () => null, child: const Icon(Icons.arrow_forward),),
          ],
        ),
      ),
    );
  }
}
