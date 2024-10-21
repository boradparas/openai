// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIResponseToolCall _$OpenAIResponseToolCallFromJson(
        Map<String, dynamic> json) =>
    OpenAIResponseToolCall(
      function: OpenAIResponseFunction.fromJson(
          json['function'] as Map<String, dynamic>),
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$OpenAIResponseToolCallToJson(
        OpenAIResponseToolCall instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'function': instance.function.toJson(),
    };

OpenAIStreamResponseToolCall _$OpenAIStreamResponseToolCallFromJson(
        Map<String, dynamic> json) =>
    OpenAIStreamResponseToolCall(
      function: OpenAIResponseFunction.fromJson(
          json['function'] as Map<String, dynamic>),
      index: (json['index'] as num).toInt(),
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$OpenAIStreamResponseToolCallToJson(
        OpenAIStreamResponseToolCall instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'function': instance.function.toJson(),
      'index': instance.index,
    };
