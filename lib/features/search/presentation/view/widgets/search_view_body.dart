import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/view/widgets/Newst_books_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
            child: TextField(
              maxLines: 1,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.white),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Result', style: Styles.textStyle18),
          const SizedBox(height: 10),
          Expanded(child: const NewstBooksLIstView()),
        ],
      ),
    );
  }
}
