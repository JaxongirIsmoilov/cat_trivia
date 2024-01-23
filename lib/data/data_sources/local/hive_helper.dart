import 'package:cat_trivia/data/models/CatModelCommon.dart';
import 'package:hive_flutter/adapters.dart';

import 'adapter/cat_item_helper.dart';

class HiveHelper{
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CatItemsModelAdapter());
    await Hive.openBox('Cats');
  }

  static Future<void> saveFact(CatModelCommon catModel) async {
    var box = Hive.box('cats');
    box.add(catModel);
  }

  static List<CatModelCommon> showAllFacts() {
    var box = Hive.box('cats');
    return box.values.cast<CatModelCommon>().toList();
  }
}