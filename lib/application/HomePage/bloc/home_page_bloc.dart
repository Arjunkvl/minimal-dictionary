import 'package:dartz/dartz.dart';
import 'package:dictionary/application/dependency/injection.dart';
import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/data/model/no_meaning/no_meaning.dart';
import 'package:dictionary/domain/Usecases/use_cases.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends HydratedBloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial()) {
    GetMeaning getmeaning = locator<GetMeaning>();
    on<StartSearching>((event, emit) async {
      emit(SearchingState());
      Option<Either<NoMeaning, Meanings>> resultFromApi =
          await getmeaning(event.word);

      resultFromApi.fold(() => emit(ApiResultNoneState()), (result) {
        result.fold((noMeaning) {
          emit(SearchedHasNoMeaning(meaningDetails: noMeaning));
        }, (hasMeaning) {
          emit(SearchedHasMeaning(meaningDetails: hasMeaning));
        });
      });
    });
  }

  @override
  HomePageState? fromJson(Map<String, dynamic> json) {
    try {
      Meanings apiResponse = Meanings.fromJson(json);
      return SearchedHasMeaning(meaningDetails: apiResponse);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(HomePageState state) {
    if (state is SearchedHasMeaning) {
      return state.meaningDetails.toJson();
    } else {
      return null;
    }
  }
}
