import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class CatModelCommon{
  @HiveField(0)
  String text;
  @HiveField(1)
  String createdAt;
  @HiveField(2)
  String image;

  CatModelCommon(this.text, this.createdAt, this.image);

  Map<String, dynamic> toJson() {
    return {
      'text' : text,
      'createdAt' : createdAt,
      'image' : image
    };
  }

  factory CatModelCommon.fromJson(Map<String, dynamic> json) {
    return CatModelCommon(json['text'], json['createdAt'], json['image']);
  }
}