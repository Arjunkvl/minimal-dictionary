import 'package:dictionary/data/model/meanings/meanings.dart';
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
      Meanings meaningDetails = await getmeaning(event.word);
      emit(SearchedState(meaningDetails: meaningDetails));
    });
  }
}
