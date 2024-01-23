import 'package:cat_trivia/data/data_sources/remote/api/api_service.dart';
import 'package:cat_trivia/data/repository/app_repository_impl.dart';
import 'package:cat_trivia/domain/repository/app_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;
final dio = Dio(BaseOptions(
    baseUrl: "https://cat-fact.herokuapp.com/",
    contentType: 'application/json',
    receiveDataWhenStatusError: true));

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(dio));
  getIt.registerSingleton<AppRepository>(AppRepositoryImpl());
}
