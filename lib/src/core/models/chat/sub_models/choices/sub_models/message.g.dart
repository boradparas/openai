// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIChatCompletionChoiceMessageModel
    _$OpenAIChatCompletionChoiceMessageModelFromJson(
            Map<String, dynamic> json) =>
        OpenAIChatCompletionChoiceMessageModel(
          role: $enumDecode(_$OpenAIChatMessageRoleEnumMap, json['role']),
          content: (json['content'] as List<dynamic>?)
              ?.map((e) =>
                  OpenAIChatCompletionChoiceMessageContentItemModel.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          toolCalls: (json['tool_calls'] as List<dynamic>?)
              ?.map((e) =>
                  OpenAIResponseToolCall.fromJson(e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
        );

Map<String, dynamic> _$OpenAIChatCompletionChoiceMessageModelToJson(
        OpenAIChatCompletionChoiceMessageModel instance) =>
    <String, dynamic>{
      'role': _$OpenAIChatMessageRoleEnumMap[instance.role]!,
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'tool_calls': instance.toolCalls?.map((e) => e.toJson()).toList(),
      'name': instance.name,
    };

const _$OpenAIChatMessageRoleEnumMap = {
  OpenAIChatMessageRole.system: 'system',
  OpenAIChatMessageRole.user: 'user',
  OpenAIChatMessageRole.assistant: 'assistant',
  OpenAIChatMessageRole.function: 'function',
  OpenAIChatMessageRole.tool: 'tool',
};

RequestFunctionMessage _$RequestFunctionMessageFromJson(
        Map<String, dynamic> json) =>
    RequestFunctionMessage(
      role: $enumDecode(_$OpenAIChatMessageRoleEnumMap, json['role']),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) =>
              OpenAIChatCompletionChoiceMessageContentItemModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      toolCallId: json['tool_call_id'] as String,
    );

Map<String, dynamic> _$RequestFunctionMessageToJson(
        RequestFunctionMessage instance) =>
    <String, dynamic>{
      'role': _$OpenAIChatMessageRoleEnumMap[instance.role]!,
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'tool_call_id': instance.toolCallId,
    };
