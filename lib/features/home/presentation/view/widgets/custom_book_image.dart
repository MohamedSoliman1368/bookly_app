import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*0.3,
      child: AspectRatio(
        aspectRatio: 2.6/4 ,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Book 1 High (1).png')),

          ),

        ),
      ),
    );
  }
}
