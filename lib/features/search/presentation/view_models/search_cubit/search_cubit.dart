import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of<SearchCubit>(context);

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({String? bookName}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchedBooks(bookName: bookName);

    result.fold(
      (failure) => emit(SearchFailure(failure.errMessage)),
      (books) => emit(SearchSuccess(books: books)),
    );
  }
}
