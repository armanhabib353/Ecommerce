import 'package:flutter/material.dart';

class ArmanCircularIcon extends StatelessWidget {
  const ArmanCircularIcon(
      {super.key,
      this.size = 24,
      required this.icon,
      this.color,
      this.onPressed});

  final double? size;
  final IconData icon;
  final Color? color;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ));
  }
}
