// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAICompletionModelChoice _$OpenAICompletionModelChoiceFromJson(
        Map<String, dynamic> json) =>
    OpenAICompletionModelChoice(
      text: json['text'] as String,
      index: (json['index'] as num).toInt(),
      logprobs: (json['logprobs'] as num?)?.toInt(),
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$OpenAICompletionModelChoiceToJson(
        OpenAICompletionModelChoice instance) =>
    <String, dynamic>{
      'finishReason': instance.finishReason,
      'index': instance.index,
      'logprobs': instance.logprobs,
      'text': instance.text,
    };
