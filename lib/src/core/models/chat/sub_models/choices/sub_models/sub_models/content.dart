import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../message.dart';

part 'content.g.dart';

/// Enum representing the type of content item.
enum ContentType {
  @JsonValue('text')
  text,

  @JsonValue('image_url')
  imageUrl,

  @JsonValue('image_base64')
  imageBase64,
}

/// {@template openai_chat_completion_choice_message_content_item_model}
/// Represents a content item of the [OpenAIChatCompletionChoiceMessageModel] used in OpenAI Chat methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIChatCompletionChoiceMessageContentItemModel extends Equatable {
  /// {@macro openai_chat_completion_choice_message_content_item_model}
  const OpenAIChatCompletionChoiceMessageContentItemModel({
    required this.type,
    this.text,
    this.imageUrl,
    this.imageBase64,
  });

  /// Factory constructor for creating an image Base64 content item.
  factory OpenAIChatCompletionChoiceMessageContentItemModel.imageBase64(
      String imageBase64) {
    return OpenAIChatCompletionChoiceMessageContentItemModel(
      type: ContentType.imageBase64,
      imageBase64: imageBase64,
    );
  }

  /// Factory constructor for creating a new instance from a JSON map.
  factory OpenAIChatCompletionChoiceMessageContentItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIChatCompletionChoiceMessageContentItemModelFromJson(json);

  /// Factory constructor for creating a text content item.
  factory OpenAIChatCompletionChoiceMessageContentItemModel.text(String text) {
    return OpenAIChatCompletionChoiceMessageContentItemModel(
      type: ContentType.text,
      text: text,
    );
  }

  /// Factory constructor for creating an image URL content item.
  factory OpenAIChatCompletionChoiceMessageContentItemModel.imageUrl(
      String imageUrl) {
    return OpenAIChatCompletionChoiceMessageContentItemModel(
      type: ContentType.imageUrl,
      imageUrl: imageUrl,
    );
  }

  /// The type of the content item.
  final ContentType type;

  /// The text content of the item.
  final String? text;

  /// The image URL.
  final String? imageUrl;

  /// The image in Base64 format.
  final String? imageBase64;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIChatCompletionChoiceMessageContentItemModelToJson(this);

  @override
  List<Object?> get props => [type, text, imageUrl, imageBase64];

  @override
  String toString() {
    switch (type) {
      case ContentType.text:
        return 'ContentItem(type: text, text: $text)';
      case ContentType.imageUrl:
        return 'ContentItem(type: imageUrl, imageUrl: $imageUrl)';
      case ContentType.imageBase64:
        return 'ContentItem(type: imageBase64, imageBase64: $imageBase64)';
    }
  }
}
