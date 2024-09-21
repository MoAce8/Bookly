import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          SizedBox(
            height: screenHeight(context) * .32,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BookCard(),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
            ),
          ),
        ],
      ),
    );
  }
}
