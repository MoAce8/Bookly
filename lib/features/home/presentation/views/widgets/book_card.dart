import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}