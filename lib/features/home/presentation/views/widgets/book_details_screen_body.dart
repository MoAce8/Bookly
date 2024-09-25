import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context) * .26,
            ),
            child: const BookCard(),
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

        ],
      ),
    );
  }
}
