import 'package:freezed_annotation/freezed_annotation.dart';
part 'facts_model.freezed.dart';
part 'facts_model.g.dart';
@freezed
class Facts with _$Facts {
  @JsonSerializable(explicitToJson: true)
  const factory Facts(
  Status? status,
  String? sId,
  String? user,
  String? text,
  int? iV,
  String? source,
  String? updatedAt,
  String? type,
  String? createdAt,
  bool? deleted,
  bool? used,
      ) = _Facts;

  factory Facts.fromJson(Map<String, dynamic> json) => _$FactsFromJson(json);
}

@freezed
class Status with _$Status {
  @JsonSerializable(explicitToJson: true)
  const factory Status(
  bool? verified,
  int? sentCount,
      ) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}