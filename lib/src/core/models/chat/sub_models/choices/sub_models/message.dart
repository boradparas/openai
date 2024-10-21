import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../../../../../dart_openai.dart';
import '../../../../../../instance/chat/chat.dart';
import 'sub_models/content.dart';
import 'sub_models/tool_call.dart';

export 'sub_models/content.dart';
export 'sub_models/tool_call.dart';

part 'message.g.dart';

/// {@template openai_chat_completion_choice_message_model}
/// This represents the message of the [OpenAIChatCompletionChoiceModel] model of the OpenAI API, which is used and returned while using the [OpenAIChat] methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIChatCompletionChoiceMessageModel extends Equatable {
  /// {@macro openai_chat_completion_choice_message_model}
  const OpenAIChatCompletionChoiceMessageModel({
    required this.role,
    required this.content,
    this.toolCalls,
    this.name,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIChatCompletionChoiceMessageModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OpenAIChatCompletionChoiceMessageModelFromJson(json);

  /// The [role] of the message.
  @JsonKey(name: 'role')
  final OpenAIChatMessageRole role;

  /// The [content] of the message.
  @JsonKey(name: 'content')
  final List<OpenAIChatCompletionChoiceMessageContentItemModel>? content;

  /// The function that the model is requesting to call.
  @JsonKey(name: 'tool_calls')
  final List<OpenAIResponseToolCall>? toolCalls;

  /// The message participant name.
  @JsonKey(name: 'name')
  final String? name;

  /// Whether the message has tool calls.
  bool get haveToolCalls => toolCalls != null;

  /// Whether the message has content.
  bool get haveContent => content != null && content!.isNotEmpty;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIChatCompletionChoiceMessageModelToJson(this);

  @override
  List<Object?> get props => [role, content, toolCalls, name];

  /// Converts a response function message to a request function message, so that it can be used in the next request.
  ///
  /// You should pass the response function message's [toolCallId] to this method, since it is required when requesting it.
  RequestFunctionMessage asRequestFunctionMessage({
    required String toolCallId,
  }) {
    return RequestFunctionMessage(
      content: content,
      role: role,
      toolCallId: toolCallId,
    );
  }

  @override
  String toString() {
    return 'OpenAIChatCompletionChoiceMessageModel(role: $role, content: $content, toolCalls: $toolCalls, name: $name)';
  }
}

/// {@template openai_chat_completion_function_choice_message_model}
/// This represents the message of the [RequestFunctionMessage] model of the OpenAI API, which is used while using the [OpenAIChat] methods, precisely to send a response function message as a request function message for next requests.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class RequestFunctionMessage extends OpenAIChatCompletionChoiceMessageModel {
  /// {@macro openai_chat_completion_function_choice_message_model}
  const RequestFunctionMessage({
    required super.role,
    required super.content,
    required this.toolCallId,
  }) : super(
          toolCalls: null,
          name: null,
        );

  /// Creates a new instance from a JSON map.
  factory RequestFunctionMessage.fromJson(Map<String, dynamic> json) =>
      _$RequestFunctionMessageFromJson(json);

  /// The [toolCallId] of the message.
  @JsonKey(name: 'tool_call_id')
  final String toolCallId;

  /// Converts the instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$RequestFunctionMessageToJson(this);

  @override
  List<Object?> get props => [...super.props, toolCallId];

  @override
  String toString() {
    return 'RequestFunctionMessage(role: $role, content: $content, toolCallId: $toolCallId)';
  }
}
