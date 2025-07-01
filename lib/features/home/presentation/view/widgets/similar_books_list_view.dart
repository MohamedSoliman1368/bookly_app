import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../manger/similar_books_cubit/similar_books_cubit.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
