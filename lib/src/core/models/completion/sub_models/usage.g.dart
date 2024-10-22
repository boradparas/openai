// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAICompletionModelUsage _$OpenAICompletionModelUsageFromJson(
        Map<String, dynamic> json) =>
    OpenAICompletionModelUsage(
      promptTokens: (json['prompt_tokens'] as num).toInt(),
      completionTokens: (json['completion_tokens'] as num).toInt(),
      totalTokens: (json['total_tokens'] as num).toInt(),
    );

Map<String, dynamic> _$OpenAICompletionModelUsageToJson(
        OpenAICompletionModelUsage instance) =>
    <String, dynamic>{
      'completion_tokens': instance.completionTokens,
      'prompt_tokens': instance.promptTokens,
      'total_tokens': instance.totalTokens,
    };
