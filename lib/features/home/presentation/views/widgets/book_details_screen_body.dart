import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_row.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 24,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context) * .265 - 24,
                  ),
                  child: const BookCard(imageUrl: '',),
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.text30,
                ),
                const SizedBox(
                  height: 5,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.text18.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const RatingRow(),
                const SizedBox(
                  height: 37,
                ),
                const BookActionButtons(),
                const Expanded(
                  child: SizedBox(
                    height: 49,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.text14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListview(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
