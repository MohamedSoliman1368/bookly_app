import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/model/book_model/book_model.dart';
import 'book_action_button.dart';
import 'book_rating_item.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(imageUrl: book.volumeInfo.imageLinks.thumbnail),
        const SizedBox(height: 30),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
         Opacity(
          opacity: 0.7,
          child: Text(book.volumeInfo.authors![0], style: Styles.textStyle16,
          textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        const BookRatingItem(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 25),
        const Row(
          children: [
            Expanded(
              child: BookActionButton(
                text: ' Free ',
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
                text: 'preview',
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
