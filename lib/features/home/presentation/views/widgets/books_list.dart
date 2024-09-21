import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BooksList extends StatelessWidget {
  const BooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * .32,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: BookCard(),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
