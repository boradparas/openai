// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIEditModel _$OpenAIEditModelFromJson(Map<String, dynamic> json) =>
    OpenAIEditModel(
      created:
          OpenAIEditModel._fromJsonCreated((json['created'] as num).toInt()),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => OpenAIEditModelChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : OpenAIEditModelUsage.fromJson(
              json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpenAIEditModelToJson(OpenAIEditModel instance) =>
    <String, dynamic>{
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'created': OpenAIEditModel._toJsonCreated(instance.created),
      'usage': instance.usage?.toJson(),
    };
