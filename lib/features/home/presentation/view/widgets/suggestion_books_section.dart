import 'package:bookly/features/home/presentation/view/widgets/suggestion_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class SuggestionBooksSection extends StatelessWidget {
  const SuggestionBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        const SuggestionListView(),
      ],
    );
  }
}
