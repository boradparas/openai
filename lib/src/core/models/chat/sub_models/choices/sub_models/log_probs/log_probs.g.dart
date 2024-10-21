// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_probs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIChatCompletionChoiceLogProbsModel
    _$OpenAIChatCompletionChoiceLogProbsModelFromJson(
            Map<String, dynamic> json) =>
        OpenAIChatCompletionChoiceLogProbsModel(
          content: (json['content'] as List<dynamic>)
              .map((e) =>
                  OpenAIChatCompletionChoiceLogProbsContentModel.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$OpenAIChatCompletionChoiceLogProbsModelToJson(
        OpenAIChatCompletionChoiceLogProbsModel instance) =>
    <String, dynamic>{
      'content': instance.content.map((e) => e.toJson()).toList(),
    };
