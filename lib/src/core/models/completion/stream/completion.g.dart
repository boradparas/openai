// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIStreamCompletionModel _$OpenAIStreamCompletionModelFromJson(
        Map<String, dynamic> json) =>
    OpenAIStreamCompletionModel(
      id: json['id'] as String,
      created: OpenAIStreamCompletionModel._fromJsonCreated(
          (json['created'] as num).toInt()),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => OpenAIStreamCompletionModelChoice.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      model: json['model'] as String,
      systemFingerprint: json['system_fingerprint'] as String?,
    );

Map<String, dynamic> _$OpenAIStreamCompletionModelToJson(
        OpenAIStreamCompletionModel instance) =>
    <String, dynamic>{
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'created': OpenAIStreamCompletionModel._toJsonCreated(instance.created),
      'id': instance.id,
      'model': instance.model,
      'system_fingerprint': instance.systemFingerprint,
    };
