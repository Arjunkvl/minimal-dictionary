import 'package:dartz/dartz.dart';
import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/data/model/no_meaning/no_meaning.dart';
import 'package:dictionary/data/repository/repo_impl.dart';
import 'package:dictionary/domain/Usecases/use_cases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial()) {
    final RepoImpl repository = RepoImpl();
    GetMeaning getmeaning = GetMeaning(repository: repository);
    on<StartSearching>((event, emit) async {
      emit(SearchingState());
      Either<NoMeaning, Meanings> resultFromApi = await getmeaning(event.word);
      resultFromApi.fold((noMeaning) {
        emit(SearchedHasNoMeaning(meaningDetails: noMeaning));
      }, (hasMeaning) {
        emit(SearchedHasMeaning(meaningDetails: hasMeaning));
      });
    });
  }
}
