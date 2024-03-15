import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_text_filed.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Search Results ',
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(child: SearchResultListView()),
            ],
          ),
        ),
      ),
    );
  }
}
