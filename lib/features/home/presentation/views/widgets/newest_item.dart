import 'package:bookly/constants.dart';
import 'package:bookly/core/models/book_model/BookModel.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetails', extra: bookModel);
      },
      child: SizedBox(
        height: screenHeight(context) * .165,
        child: Row(
          children: [
            BookCard(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth(context) * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.text20.copyWith(
                        fontFamily: kGTSectraFine,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      bookModel.volumeInfo.authors!.isEmpty
                          ? 'Unknown'
                          : bookModel.volumeInfo.authors![0],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Styles.text14.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: Styles.text20,
                      ),
                      const Spacer(),
                      RatingRow(
                        rate: bookModel.volumeInfo.averageRating!,
                        count: bookModel.volumeInfo.ratingsCount!,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
