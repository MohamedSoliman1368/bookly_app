import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_action_button.dart';
import 'book_rating_item.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CustomBookImage(),
        const SizedBox(height: 30),
        Text(
          'The Jungle Book',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Opacity(
          opacity: 0.7,
          child: Text('Rudyard Kipling', style: Styles.textStyle16),
        ),
        const SizedBox(height: 10),
        const BookRatingItem(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 25),
        const Row(
          children: [
            Expanded(
              child: BookActionButton(
                text: ' 19.99 € ',
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
            ),
            Expanded(
              child: BookActionButton(
                text: 'Free preview',
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
