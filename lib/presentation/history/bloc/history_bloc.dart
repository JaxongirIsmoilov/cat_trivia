import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cat_trivia/data/data_sources/local/hive_helper.dart';
import 'package:meta/meta.dart';

import '../../../data/models/CatModelCommon.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitial()) {
    on<GetAllFactsHistoryEvent>((event, emit) {
      emit(GetAllHistoryLoadingState());
       emit(GetAllHistorySuccessState(HiveHelper.showAllFacts()));
    });
  }
}
