import 'package:flutter/cupertino.dart';

import 'best_seller_list_view_item.dart';

class BestSellerLIstView extends StatelessWidget {
  const BestSellerLIstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 5),
          child:  BestSellerListViewItem(),
        );
      },
    );
  }
}