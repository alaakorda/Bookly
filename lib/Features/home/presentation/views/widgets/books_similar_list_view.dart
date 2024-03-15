import 'package:bookly/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksSimilarListView extends StatelessWidget {
  const BooksSimilarListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomListViewItem(),
          );
        },
      ),
    );
  }
}
