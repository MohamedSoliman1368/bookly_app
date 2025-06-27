import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../model/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
