import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../../../../dart_openai.dart';

part 'openai_stream_chat_completion_choice_delta_model.g.dart';

/// {@template openai_stream_chat_completion_choice_delta_model}
/// This contains the [role] and [content] of the choice of the chat response.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIStreamChatCompletionChoiceDeltaModel extends Equatable {
  /// {@macro openai_stream_chat_completion_choice_delta_model}
  const OpenAIStreamChatCompletionChoiceDeltaModel({
    required this.role,
    required this.content,
    this.toolCalls,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIStreamChatCompletionChoiceDeltaModel.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIStreamChatCompletionChoiceDeltaModelFromJson(json);

  /// The [role] of the message.
  @JsonKey(name: 'role')
  final OpenAIChatMessageRole? role;

  /// The [content] of the message.
  @JsonKey(name: 'content')
  final List<OpenAIChatCompletionChoiceMessageContentItemModel?>? content;

  /// The [toolCalls] of the message.
  @JsonKey(name: 'tool_calls')
  final List<OpenAIResponseToolCall>? toolCalls;

  /// Whether the message has tool calls.
  bool get haveToolCalls => toolCalls != null;

  /// Whether the message has a role.
  bool get haveRole => role != null;

  /// Whether the message has content.
  bool get haveContent => content != null;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIStreamChatCompletionChoiceDeltaModelToJson(this);

  @override
  List<Object?> get props => [role, content, toolCalls];
}
