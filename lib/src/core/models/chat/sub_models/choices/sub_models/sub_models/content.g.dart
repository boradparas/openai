// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIChatCompletionChoiceMessageContentItemModel
    _$OpenAIChatCompletionChoiceMessageContentItemModelFromJson(
            Map<String, dynamic> json) =>
        OpenAIChatCompletionChoiceMessageContentItemModel(
          type: $enumDecode(_$ContentTypeEnumMap, json['type']),
          text: json['text'] as String?,
          imageUrl: json['imageUrl'] as String?,
          imageBase64: json['imageBase64'] as String?,
        );

Map<String, dynamic> _$OpenAIChatCompletionChoiceMessageContentItemModelToJson(
        OpenAIChatCompletionChoiceMessageContentItemModel instance) =>
    <String, dynamic>{
      'type': _$ContentTypeEnumMap[instance.type]!,
      'text': instance.text,
      'imageUrl': instance.imageUrl,
      'imageBase64': instance.imageBase64,
    };

const _$ContentTypeEnumMap = {
  ContentType.text: 'text',
  ContentType.imageUrl: 'image_url',
  ContentType.imageBase64: 'image_base64',
};
