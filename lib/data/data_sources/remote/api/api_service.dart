import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/facts/facts_model.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService{

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('facts')
  Future<List<Facts>> getFacts();
}