part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomePageInitial extends HomePageState {}

class SearchingState extends HomePageState {}

class SearchedState extends HomePageState {
  final Meanings meaningDetails;
  SearchedState({required this.meaningDetails});
  @override
  List<Object> get props => [meaningDetails];
}
