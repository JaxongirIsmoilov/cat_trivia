import 'package:hive_flutter/adapters.dart';

import 'adapter/cat_item_helper.dart';

class HiveHelper{
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CatItemsModelAdapter());
    await Hive.openBox('basket');
    await Hive.openBox('favourite');
  }
}