part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object> get props => [];
}

class StartSearching extends HomePageEvent {
  final String word;
  StartSearching({required this.word});
  @override
  List<Object> get props => [word];
}
