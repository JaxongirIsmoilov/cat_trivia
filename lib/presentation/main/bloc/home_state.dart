part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetFactsLoadingState extends HomeState{}

class GetFactsSuccessState extends HomeState{
  final CatHolder facts;
  GetFactsSuccessState(this.facts);
}

class GetFactsErrorState extends HomeState{
  String message;

  GetFactsErrorState(this.message);
}
