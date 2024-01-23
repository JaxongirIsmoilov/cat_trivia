import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cat_trivia/data/models/facts/facts_model.dart';
import 'package:cat_trivia/di/di.dart';
import 'package:cat_trivia/domain/repository/app_repository.dart';
import 'package:meta/meta.dart';

import '../../../data/data_sources/local/adapter/CatHolder.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final repository = getIt<AppRepository>();
  List<CatHolder> items = [];

  HomeBloc() : super(HomeInitial()) {
    CatHolder _getRandomCatInfo(){
      var rng = Random();
      int randomNum = rng.nextInt(items.length);
      return items[randomNum];
    }
    on<GetAllFactsEvent>((event, emit) async{
      GetFactsLoadingState();
      try{
        List<Facts> data = await repository.getAllFacts();
        data.forEach((element) {
          items.add(CatHolder(element.text, element.createdAt));
        });
        emit(GetFactsSuccessState(_getRandomCatInfo()));
      }catch(e){
        emit(GetFactsErrorState(e.toString()));
        print(e.toString());
      }
    });

    on<GenerateNewFacts>((event, emit) async{
      GetFactsLoadingState();
      try{
        emit(GetFactsSuccessState(_getRandomCatInfo()));
      }catch(e){
        emit(GetFactsErrorState(e.toString()));
        print(e.toString());
      }
    });
  }
}
