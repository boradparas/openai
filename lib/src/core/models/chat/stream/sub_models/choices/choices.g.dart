// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIStreamChatCompletionChoiceModel
    _$OpenAIStreamChatCompletionChoiceModelFromJson(
            Map<String, dynamic> json) =>
        OpenAIStreamChatCompletionChoiceModel(
          index: (json['index'] as num).toInt(),
          delta: OpenAIStreamChatCompletionChoiceDeltaModel.fromJson(
              json['delta'] as Map<String, dynamic>),
          finishReason: json['finish_reason'] as String?,
        );

Map<String, dynamic> _$OpenAIStreamChatCompletionChoiceModelToJson(
        OpenAIStreamChatCompletionChoiceModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'delta': instance.delta.toJson(),
      'finish_reason': instance.finishReason,
    };
