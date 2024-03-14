import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.close),
        Spacer(),
        Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
