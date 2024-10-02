import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //TOdo - Rating
        Row(children: [
          // for (int i = 0; i < 5; i++)
          const Icon(Iconsax.star5, color: Colors.amber, size: 24),
          const SizedBox(width: 8),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
            const TextSpan(text: '(210)')
          ]))
        ]),

        //TOdo - Share Button
        IconButton(onPressed: () {}, icon: const Icon(Icons.share, size: 24)),
      ],
    );
  }
}
