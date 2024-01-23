import 'package:hive/hive.dart';

import '../../../models/facts/facts_model.dart';


@HiveType(typeId: 0)
class CatHolder {
  @HiveField(0)
  Status? status;
  @HiveField(1)
  String? sId;
  @HiveField(2)
  String? user;
  @HiveField(3)
  String? text;
  @HiveField(4)
  int? iV;
  @HiveField(5)
  String? source;
  @HiveField(6)
  String? updatedAt;
  @HiveField(7)
  String? type;
  @HiveField(8)
  String? createdAt;
  @HiveField(9)
  bool? deleted;
  @HiveField(10)
  bool? used;
  @HiveField(11)
  int? id;


  CatHolder(
      this.status,
      this.sId,
      this.user,
      this.text,
      this.iV,
      this.source,
      this.updatedAt,
      this.type,
      this.createdAt,
      this.deleted,
      this.used,
      this.id
      );

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'sId': sId,
      'user': user,
      'text': text,
      'iV': iV,
      'source': source,
      'updatedAt': updatedAt,
      'type': type,
      'createdAt': createdAt,
      'deleted': deleted,
      'used': used,
      'id' : id
    };
  }

  factory CatHolder.fromJson(Map<String, dynamic> json) {
    return CatHolder(
        json['status'],
        json['sId'],
        json['user'],
        json['text'],
        json['iV'],
        json['source'],
        json['updatedAt'],
        json['type'],
        json['createdAt'],
        json['deleted'],
        json['used'],
        json['id']
        );
  }
}
