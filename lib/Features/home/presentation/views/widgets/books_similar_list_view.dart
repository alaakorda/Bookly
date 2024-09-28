import 'package:bookly/Features/home/presentation/manager/similer_books/similer_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/core/widget/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksSimilarListView extends StatelessWidget {
  const BooksSimilarListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
        builder: (context, state) {
      if (state is SimilerBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.width * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CustomListViewItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              );
            },
          ),
        );
      } else if (state is SimilerBooksFailure) {
        return CustomErrorWidget(errorMessage: state.error);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
