import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetails');
      },
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AssetsData.book),
              fit: BoxFit.contain
            ),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}