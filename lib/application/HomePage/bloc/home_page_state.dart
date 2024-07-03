part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomePageInitial extends HomePageState {}

class SearchingState extends HomePageState {}

class SearchedHasMeaning extends HomePageState {
  final Meanings meaningDetails;
  SearchedHasMeaning({required this.meaningDetails});
  @override
  List<Object> get props => [meaningDetails];
}

class SearchedHasNoMeaning extends HomePageState {
  final NoMeaning meaningDetails;
  SearchedHasNoMeaning({required this.meaningDetails});
  @override
  List<Object> get props => [meaningDetails];
}

class ApiResultNoneState extends HomePageState {
  @override
  List<Object> get props => [];
}
