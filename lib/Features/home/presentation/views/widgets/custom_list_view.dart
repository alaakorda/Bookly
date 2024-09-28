import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widget/error_widget.dart';
import 'package:bookly/core/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBoooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * 0.7,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomListViewItem(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks.thumbnail),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          {
            return CustomErrorWidget(errorMessage: state.error);
          }
        } else {
          return const Center(child: LoadingWidget());
        }
      },
    );
  }
}
