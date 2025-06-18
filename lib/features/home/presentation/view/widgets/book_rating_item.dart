import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({super.key, this.mainAxisAlignment=MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 14),
        const SizedBox(width: 8),
         Text('4.8', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(width:7),
        const Opacity(
          opacity: 0.5,
          child: Text('(245)', style: Styles.textStyle14),
        ),
      ],
    );
  }
}
