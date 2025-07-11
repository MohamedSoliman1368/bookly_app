import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'Newst_books_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FeaturedBookListView(),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('New Books', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: NewstBooksLIstView(
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ),
      ],
    );
  }
}
