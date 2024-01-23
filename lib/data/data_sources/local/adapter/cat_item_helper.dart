import 'package:cat_trivia/data/models/CatModelCommon.dart';
import 'package:hive/hive.dart';

class CatItemsModelAdapter extends TypeAdapter<CatModelCommon> {


  @override
  int get typeId => 0;

  @override
  CatModelCommon read(BinaryReader reader) {
    return CatModelCommon.fromJson(reader.readMap().cast());
  }

  @override
  void write(BinaryWriter writer, CatModelCommon obj) {
    writer.writeMap(obj.toJson());
  }

}