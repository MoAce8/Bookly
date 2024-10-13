import 'package:bookly/constants.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.book});

  final BookModel book;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    bool hasData = widget.book.volumeInfo.categories.isNotEmpty;
    SimilarBooksCubit.get(context).fetchSimilarBooks(
        category: hasData ? widget.book.volumeInfo.categories[0] : 'fantasy');
    super.initState();
  }

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
      body: BookDetailsScreenBody(
        book: widget.book,
      ),
    );
  }
}
