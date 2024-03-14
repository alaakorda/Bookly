import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:  width*0.15, vertical: height*0.05),
                child: CustomListViewItem(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
