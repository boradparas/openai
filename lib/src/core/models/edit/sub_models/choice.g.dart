// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIEditModelChoice _$OpenAIEditModelChoiceFromJson(
        Map<String, dynamic> json) =>
    OpenAIEditModelChoice(
      text: json['text'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$OpenAIEditModelChoiceToJson(
        OpenAIEditModelChoice instance) =>
    <String, dynamic>{
      'text': instance.text,
      'index': instance.index,
    };
