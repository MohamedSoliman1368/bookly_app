import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: const FeaturedBookListView(),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'Best Seller',
            style:Styles.textStyle18,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: const BestSellerListViewItem(),
        ),
      ],
    );
  }
}
