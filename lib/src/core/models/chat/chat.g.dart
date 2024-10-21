// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIChatCompletionModel _$OpenAIChatCompletionModelFromJson(
        Map<String, dynamic> json) =>
    OpenAIChatCompletionModel(
      id: json['id'] as String,
      created:
          OpenAIChatCompletionModel._fromJson((json['created'] as num).toInt()),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => OpenAIChatCompletionChoiceModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      usage: OpenAIChatCompletionUsageModel.fromJson(
          json['usage'] as Map<String, dynamic>),
      systemFingerprint: json['system_fingerprint'] as String?,
    );

Map<String, dynamic> _$OpenAIChatCompletionModelToJson(
        OpenAIChatCompletionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': OpenAIChatCompletionModel._toJson(instance.created),
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'usage': instance.usage.toJson(),
      'system_fingerprint': instance.systemFingerprint,
    };
