import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class ResultsListview extends StatelessWidget {
  const ResultsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const BestSellerItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 6,
    );
  }
}
