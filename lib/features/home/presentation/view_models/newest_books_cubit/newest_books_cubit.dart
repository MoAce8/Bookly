import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  static NewestBooksCubit get(context) =>
      BlocProvider.of<NewestBooksCubit>(context);

  final HomeRepo homeRepo;

  fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
          (failure) => emit(NewestBooksFailure(failure.errMessage)),
          (books) => emit(NewestBooksSuccess(books: books)),
    );
  }
}
