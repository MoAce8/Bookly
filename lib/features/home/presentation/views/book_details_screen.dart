import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        title: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        backgroundColor: kPrimaryColor,
        surfaceTintColor: kPrimaryColor,
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            onPressed: () {},
            icon: const Icon(CupertinoIcons.cart),
          ),
        ],
      ),
      body: const BookDetailsScreenBody(),
    );
  }
}
