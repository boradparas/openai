// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIStreamChatCompletionChoiceDeltaModel
    _$OpenAIStreamChatCompletionChoiceDeltaModelFromJson(
            Map<String, dynamic> json) =>
        OpenAIStreamChatCompletionChoiceDeltaModel(
          role:
              $enumDecodeNullable(_$OpenAIChatMessageRoleEnumMap, json['role']),
          content: (json['content'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : OpenAIChatCompletionChoiceMessageContentItemModel.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          toolCalls: (json['tool_calls'] as List<dynamic>?)
              ?.map((e) =>
                  OpenAIResponseToolCall.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$OpenAIStreamChatCompletionChoiceDeltaModelToJson(
        OpenAIStreamChatCompletionChoiceDeltaModel instance) =>
    <String, dynamic>{
      'role': _$OpenAIChatMessageRoleEnumMap[instance.role],
      'content': instance.content?.map((e) => e?.toJson()).toList(),
      'tool_calls': instance.toolCalls?.map((e) => e.toJson()).toList(),
    };

const _$OpenAIChatMessageRoleEnumMap = {
  OpenAIChatMessageRole.system: 'system',
  OpenAIChatMessageRole.user: 'user',
  OpenAIChatMessageRole.assistant: 'assistant',
  OpenAIChatMessageRole.function: 'function',
  OpenAIChatMessageRole.tool: 'tool',
};
