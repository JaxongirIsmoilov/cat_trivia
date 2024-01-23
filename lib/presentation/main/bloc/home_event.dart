part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetAllFactsEvent extends HomeEvent{}

class GenerateNewFacts extends HomeEvent{}