import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.4 / 4,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(AssetData.fantasy),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'Harry Potter and Goblet of Fire',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K. Rowling',
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
               Text(
                '19.99' '\$',
                style: Styles.textStyle20.copyWith(
                 fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
