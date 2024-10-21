// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_function_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIResponseFunction _$OpenAIResponseFunctionFromJson(
        Map<String, dynamic> json) =>
    OpenAIResponseFunction(
      arguments: json['arguments'],
      name: json['name'] as String?,
    );

Map<String, dynamic> _$OpenAIResponseFunctionToJson(
        OpenAIResponseFunction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'arguments': instance.arguments,
    };
