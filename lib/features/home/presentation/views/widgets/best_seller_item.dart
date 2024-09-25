import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetails');
      },
      child: SizedBox(
        height: screenHeight(context)*.165,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.book),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
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
                      'Harry Potter and the Goblet of Fire',
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
                      'J.K. Rowling',
                      style: Styles.text14.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.text20,
                      ),
                      Spacer(),
                      RatingRow(),
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
