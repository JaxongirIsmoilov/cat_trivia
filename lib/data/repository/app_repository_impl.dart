import 'package:cat_trivia/data/models/facts/facts_model.dart';

import '../../di/di.dart';
import '../../domain/repository/app_repository.dart';
import '../data_sources/remote/api/api_service.dart';

class AppRepositoryImpl extends AppRepository{
  final api = getIt<ApiService>();


  @override
  Future<Facts> getAllFacts() {
    final response = api.getFacts();
    return response;
  }

}