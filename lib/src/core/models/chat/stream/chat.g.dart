// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIStreamChatCompletionModel _$OpenAIStreamChatCompletionModelFromJson(
        Map<String, dynamic> json) =>
    OpenAIStreamChatCompletionModel(
      id: json['id'] as String,
      created: OpenAIStreamChatCompletionModel._fromJson(
          (json['created'] as num).toInt()),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => OpenAIStreamChatCompletionChoiceModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      systemFingerprint: json['system_fingerprint'] as String?,
    );

Map<String, dynamic> _$OpenAIStreamChatCompletionModelToJson(
        OpenAIStreamChatCompletionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': OpenAIStreamChatCompletionModel._toJson(instance.created),
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'system_fingerprint': instance.systemFingerprint,
    };
