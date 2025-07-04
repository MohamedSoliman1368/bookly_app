import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textColor, this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        backgroundColor: backgroundColor,
      ),
      child: Text(text, style: Styles.textStyle18.copyWith(color: textColor)),
    );
  }
}
