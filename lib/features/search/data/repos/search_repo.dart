import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> fetchSearchedBooks({
    String? bookName,
  });
}
