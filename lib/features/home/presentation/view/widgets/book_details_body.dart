import 'package:bookly/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import '../../../data/model/book_model/book_model.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 10),
                BooksDetailsSection(book:bookModel,),
                const Expanded(child: SizedBox(height: 25)),
                const SimilarBooksSection(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
