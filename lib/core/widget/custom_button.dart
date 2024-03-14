import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    Key? key,
    required this.backgroundcolor,
    required this.text,
    required this.textColor,
    required this.borderRadius,
    this.fontsize,
  }) : super(key: key);
  final Color backgroundcolor;
  final String text;
  final Color textColor;
  final double? fontsize;
  // final Function()? onPressed;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
