import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.close)),
        const Spacer(),
        const Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
