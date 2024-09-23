import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star_rounded,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          height: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.text16,
        ),
        SizedBox(
          height: 9,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            style: Styles.text14,
          ),
        ),
      ],
    );
  }
}
