import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.ratingCount})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final int ratingCount;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(${ratingCount.toString()})',
          style: Styles.textStyle14
              .copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
