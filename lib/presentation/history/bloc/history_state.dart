part of 'history_bloc.dart';

@immutable
abstract class HistoryState {}

class HistoryInitial extends HistoryState {}

class GetAllHistoryLoadingState extends HistoryState{}
class GetAllHistorySuccessState extends HistoryState{
  List<CatModelCommon> data;

  GetAllHistorySuccessState(this.data);
}
class GetAllHistoryErrorState extends HistoryState{}
