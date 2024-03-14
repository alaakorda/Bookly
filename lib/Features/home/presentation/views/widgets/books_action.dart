import 'package:bookly/core/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButtom(
            backgroundcolor: Colors.white,
            text: '19,99\$',
            textColor: Colors.black,
            fontsize: 20,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButtom(
            backgroundcolor: Color(0xffEF8262),
            text: 'Free Sample',
            textColor: Colors.white,
            fontsize: 15,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
