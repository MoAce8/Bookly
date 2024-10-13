import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  static SimilarBooksCubit get(context) =>
      BlocProvider.of<SimilarBooksCubit>(context);

  final HomeRepo homeRepo;

  fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
          (failure) => emit(SimilarBooksFailure(failure.errMessage)),
          (books) => emit(SimilarBooksSuccess(books: books)),
    );
  }
}
