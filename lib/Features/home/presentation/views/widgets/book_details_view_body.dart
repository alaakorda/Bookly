import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manager/best_seller_books/best_seller_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_similar_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        const CustomBookDetailsAppBar(),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.20,
                            right: width * 0.20,
                            top: height * 0.01,
                          ),
                          child: SizedBox(
                            height: height * 0.36,
                            width: width * 0.5,
                            child: CustomListViewItem(
                              imageUrl:
                                  bookModel.volumeInfo.imageLinks.thumbnail,
                            ),
                          ),
                        ),
                        BookDetailsSection(
                          bookModel: bookModel,
                        ),
                        const Expanded(
                          child: SizedBox(
                            height: 25,
                          ),
                        ),
                        const BooksSimilarSection(),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
