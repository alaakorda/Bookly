import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButtom(
              backgroundcolor: Colors.white,
              text: ' Free Download',
              textColor: Colors.black,
              fontsize: 13,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButtom(
              backgroundcolor: const Color(0xffEF8262),
              onPressed: () async {
                Uri url = Uri.parse(bookModel.accessInfo!.webReaderLink!);
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              text: 'Free Preview',
              textColor: Colors.white,
              fontsize: 13,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
