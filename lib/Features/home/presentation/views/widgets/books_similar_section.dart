import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_similar_list_view.dart';

class BooksSimilarSection extends StatelessWidget {
  const BooksSimilarSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const BooksSimilarListView(),
      ],
    );
  }
}
