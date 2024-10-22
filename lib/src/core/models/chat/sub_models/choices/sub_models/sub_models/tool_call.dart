import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../../../instance/chat/chat.dart';
import '../message.dart';
import 'sub_models/response_function_call.dart';

part 'tool_call.g.dart';

/// {@template openai_chat_completion_response_tool_call_model}
/// This represents the tool call of the [OpenAIChatCompletionChoiceMessageModel] model of the OpenAI API, which is used and returned while using the [OpenAIChat] methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIResponseToolCall extends Equatable {
  /// {@macro openai_chat_completion_response_tool_call_model}
  const OpenAIResponseToolCall({
    required this.function,
    this.id,
    this.type,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIResponseToolCall.fromJson(Map<String, dynamic> json) =>
      _$OpenAIResponseToolCallFromJson(json);

  /// The id of the tool call.
  @JsonKey(name: 'id')
  final String? id;

  /// The type of the tool call.
  @JsonKey(name: 'type')
  final String? type;

  /// The function of the tool call.
  @JsonKey(name: 'function')
  final OpenAIResponseFunction function;

  /// Whether the tool call has an id.
  bool get haveId => id != null;

  /// Whether the tool call has a type.
  bool get haveType => type != null;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() => _$OpenAIResponseToolCallToJson(this);

  @override
  List<Object?> get props => [id, type, function];

  @override
  String toString() {
    return 'OpenAIResponseToolCall(id: $id, type: $type, function: $function)';
  }
}

/// {@template openai_chat_completion_response_stream_tool_call_model}
/// This represents the stream tool call of the [OpenAIChatCompletionChoiceMessageModel] model of the OpenAI API, which is used and returned while using the [OpenAIChat] methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIStreamResponseToolCall extends OpenAIResponseToolCall {
  /// {@macro openai_chat_completion_response_stream_tool_call_model}
  const OpenAIStreamResponseToolCall({
    required super.function,
    required this.index,
    super.id,
    super.type,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIStreamResponseToolCall.fromJson(Map<String, dynamic> json) =>
      _$OpenAIStreamResponseToolCallFromJson(json);

  /// The index of the tool call.
  /// Please file an issue if the index is not an int in some cases.
  @JsonKey(name: 'index')
  final int index;

  /// Converts the instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$OpenAIStreamResponseToolCallToJson(this);

  @override
  List<Object?> get props => [...super.props, index];

  @override
  String toString() {
    return 'OpenAIStreamResponseToolCall(id: $id, type: $type, function: $function, index: $index)';
  }
}
