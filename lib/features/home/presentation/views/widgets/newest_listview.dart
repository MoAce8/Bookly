import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 24,
                  right: 24,
                ),
                child: BestSellerItem(
                  bookModel: state.books[index],
                ),
              ),
              childCount: state.books.length,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: LoadingIndicator(),
          );
        }
      },
    );
  }
}
