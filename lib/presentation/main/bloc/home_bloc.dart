import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cat_trivia/data/data_sources/local/hive_helper.dart';
import 'package:cat_trivia/data/models/CatModelCommon.dart';
import 'package:cat_trivia/data/models/facts/facts_model.dart';
import 'package:cat_trivia/di/di.dart';
import 'package:cat_trivia/domain/repository/app_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';

import '../../../data/data_sources/local/adapter/CatHolder.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final repository = getIt<AppRepository>();
  List<CatHolder> items = [];

  HomeBloc() : super(HomeInitial()) {

    Future<String> downloadImage(String imageUrl) async {
      Dio dio = Dio();
      var localPath = "${(await getDownloadsDirectory())!.path}/${DateTime.now().millisecond}.png";
      Response response = await dio.get(imageUrl, options: Options(responseType: ResponseType.bytes));
      File file = File(localPath);
      await file.writeAsBytes(response.data);
      print("-------------------------- $localPath");
      return localPath;
    }
    
    Future<CatModelCommon> _getRandomCatInfo() async{
      var rng = Random();
      int randomNum = rng.nextInt(items.length);
      var res = items[randomNum];
      return CatModelCommon(res.text.toString(), res.createdAt.toString(), await downloadImage('https://cataas.com/cat'));
    }

    
    on<GetAllFactsEvent>((event, emit) async{
      emit(GetFactsLoadingState());
      try{
        List<Facts> data = await repository.getAllFacts();
        data.forEach((element) {
          items.add(CatHolder(element.text, element.createdAt, ));
        });
        CatModelCommon info = await _getRandomCatInfo();
        HiveHelper.saveFact(info);
        emit(GetFactsSuccessState(info));
      }catch(e){
        emit(GetFactsErrorState(e.toString()));
        print(e.toString());
      }
    });

    on<GenerateNewFacts>((event, emit) async{
      emit(GetFactsLoadingState());
      try{
        CatModelCommon generatedInfo = await _getRandomCatInfo();
        HiveHelper.saveFact(generatedInfo);
        emit(GetFactsSuccessState(generatedInfo));
      }catch(e){
        emit(GetFactsErrorState(e.toString()));
        print(e.toString());
      }
    });

    on<ShowAllHistoryFactsEvent>((event, emit) async{
      GetFactsLoadingState();
      try{

      }catch(e){
        emit(GetFactsErrorState(e.toString()));
        print(e.toString());
      }
    });
  }
}
