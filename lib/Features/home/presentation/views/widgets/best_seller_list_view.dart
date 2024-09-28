import 'package:bookly/Features/home/presentation/manager/best_seller_books/best_seller_books_cubit.dart';
import 'package:bookly/core/widget/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
        builder: (context, state) {
      if (state is BestSellerBooksSuccess) {
        return ListView.builder(
          itemCount: state.books.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerListViewItem(
              bookModel: state.books[index],
            ),
          ),
        );
      } else if (state is BestSellerBooksFailure) {
        return CustomErrorWidget(errorMessage: state.error);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
