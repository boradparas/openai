// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIModelModel _$OpenAIModelModelFromJson(Map<String, dynamic> json) =>
    OpenAIModelModel(
      id: json['id'] as String,
      ownedBy: json['owned_by'] as String,
      permission: (json['permission'] as List<dynamic>?)
          ?.map((e) =>
              OpenAIModelModelPermission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenAIModelModelToJson(OpenAIModelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owned_by': instance.ownedBy,
      'permission': instance.permission?.map((e) => e.toJson()).toList(),
    };
