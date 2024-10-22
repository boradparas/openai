// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIStreamCompletionModelChoice _$OpenAIStreamCompletionModelChoiceFromJson(
        Map<String, dynamic> json) =>
    OpenAIStreamCompletionModelChoice(
      text: json['text'] as String,
      index: OpenAIStreamCompletionModelChoice._indexFromJson(json['index']),
      logprobs: (json['logprobs'] as num?)?.toInt(),
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$OpenAIStreamCompletionModelChoiceToJson(
        OpenAIStreamCompletionModelChoice instance) =>
    <String, dynamic>{
      'finishReason': instance.finishReason,
      'index': OpenAIStreamCompletionModelChoice._indexToJson(instance.index),
      'logprobs': instance.logprobs,
      'text': instance.text,
    };
