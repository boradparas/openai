// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIEditModelUsage _$OpenAIEditModelUsageFromJson(
        Map<String, dynamic> json) =>
    OpenAIEditModelUsage(
      promptTokens: (json['prompt_tokens'] as num).toInt(),
      completionTokens: (json['completion_tokens'] as num).toInt(),
      totalTokens: (json['total_tokens'] as num).toInt(),
    );

Map<String, dynamic> _$OpenAIEditModelUsageToJson(
        OpenAIEditModelUsage instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
