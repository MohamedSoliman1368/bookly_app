import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height:MediaQuery.of(context).size.height*0.18,
          child: AspectRatio(
            aspectRatio: 0.60 ,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Book 1 High (1).png')),

              ),

            ),
          ),
        ),

      ],
    );
  }
}
