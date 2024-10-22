// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAICompletionModel _$OpenAICompletionModelFromJson(
        Map<String, dynamic> json) =>
    OpenAICompletionModel(
      id: json['id'] as String,
      created: OpenAICompletionModel._fromJsonCreated(
          (json['created'] as num).toInt()),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) =>
              OpenAICompletionModelChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : OpenAICompletionModelUsage.fromJson(
              json['usage'] as Map<String, dynamic>),
      systemFingerprint: json['system_fingerprint'] as String?,
    );

Map<String, dynamic> _$OpenAICompletionModelToJson(
        OpenAICompletionModel instance) =>
    <String, dynamic>{
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'created': OpenAICompletionModel._toJsonCreated(instance.created),
      'id': instance.id,
      'model': instance.model,
      'system_fingerprint': instance.systemFingerprint,
      'usage': instance.usage?.toJson(),
    };
