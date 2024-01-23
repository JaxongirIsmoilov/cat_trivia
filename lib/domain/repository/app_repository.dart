import '../../data/models/facts/facts_model.dart';

abstract class AppRepository{
  Future<List<Facts>> getAllFacts();
}