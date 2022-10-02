import 'package:json_annotation/json_annotation.dart';

part 'skill_model.g.dart';

@JsonSerializable()
class SkillModel {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'thumbnail_image')
  String thumbnailImage;

  SkillModel({
    required this.id,
    required this.title,
    required this.thumbnailImage,
  });

  factory SkillModel.fromJson(Map<String, dynamic> json) => _$SkillModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}
