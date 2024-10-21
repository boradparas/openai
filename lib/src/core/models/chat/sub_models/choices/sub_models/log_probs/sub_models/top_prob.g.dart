// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_prob.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIChatCompletionChoiceTopLogProbsContentModel
    _$OpenAIChatCompletionChoiceTopLogProbsContentModelFromJson(
            Map<String, dynamic> json) =>
        OpenAIChatCompletionChoiceTopLogProbsContentModel(
          token: json['token'] as String?,
          logprob: (json['logprob'] as num?)?.toDouble(),
          bytes: (json['bytes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic> _$OpenAIChatCompletionChoiceTopLogProbsContentModelToJson(
        OpenAIChatCompletionChoiceTopLogProbsContentModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'logprob': instance.logprob,
      'bytes': instance.bytes,
    };
