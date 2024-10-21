// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIChatCompletionChoiceModel _$OpenAIChatCompletionChoiceModelFromJson(
        Map<String, dynamic> json) =>
    OpenAIChatCompletionChoiceModel(
      index: OpenAIChatCompletionChoiceModel._indexFromJson(json['index']),
      message: OpenAIChatCompletionChoiceMessageModel.fromJson(
          json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
      logprobs: json['logprobs'] == null
          ? null
          : OpenAIChatCompletionChoiceLogProbsModel.fromJson(
              json['logprobs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpenAIChatCompletionChoiceModelToJson(
        OpenAIChatCompletionChoiceModel instance) =>
    <String, dynamic>{
      'index': OpenAIChatCompletionChoiceModel._indexToJson(instance.index),
      'message': instance.message.toJson(),
      'finish_reason': instance.finishReason,
      'logprobs': instance.logprobs?.toJson(),
    };
