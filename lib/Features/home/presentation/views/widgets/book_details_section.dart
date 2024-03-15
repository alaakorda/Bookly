import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
