import 'package:cat_trivia/data/data_sources/local/adapter/CatHolder.dart';
import 'package:hive/hive.dart';

class CatItemsModelAdapter extends TypeAdapter<CatHolder> {
  @override
  CatHolder read(BinaryReader reader) {
    return CatHolder.fromJson(reader.readMap().cast());
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, CatHolder obj) {
    writer.writeMap(obj.toJson());
  }
}