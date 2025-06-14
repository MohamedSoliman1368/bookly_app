import 'package:flutter/cupertino.dart';

import 'custom_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal:5),
              child: const CustomListViewItem(),
            );
          }),
    );
  }
}