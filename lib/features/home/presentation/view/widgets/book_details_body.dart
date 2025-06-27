import 'package:bookly/features/home/presentation/view/widgets/suggestion_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 10),
                BooksDetailsSection(),
                Expanded(child: SizedBox(height: 25)),
                SuggestionBooksSection(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
