// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIChatCompletionChoiceLogProbsContentModel
    _$OpenAIChatCompletionChoiceLogProbsContentModelFromJson(
            Map<String, dynamic> json) =>
        OpenAIChatCompletionChoiceLogProbsContentModel(
          token: json['token'] as String?,
          logprob: (json['logprob'] as num?)?.toDouble(),
          bytes: (json['bytes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
          topLogprobs: (json['top_logprobs'] as List<dynamic>?)
              ?.map((e) =>
                  OpenAIChatCompletionChoiceTopLogProbsContentModel.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$OpenAIChatCompletionChoiceLogProbsContentModelToJson(
        OpenAIChatCompletionChoiceLogProbsContentModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'logprob': instance.logprob,
      'bytes': instance.bytes,
      'top_logprobs': instance.topLogprobs?.map((e) => e.toJson()).toList(),
    };
