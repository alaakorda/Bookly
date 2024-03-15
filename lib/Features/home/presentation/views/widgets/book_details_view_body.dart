import 'package:bookly/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_similar_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomScrollView(
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
                      child: const CustomListViewItem(),
                    ),
                    const BookDetailsSection(),
                    const Expanded(
                      child: SizedBox(
                        height: 30,
                      ),
                    ),
                    const BooksSimilarSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
