import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../../../../../dart_openai.dart';
import '../../../../../../../../instance/chat/chat.dart';
import '../../../../../../export.dart';
import '../../../../../chat.dart';
import '../../../../usage.dart';
import '../../message.dart';

part 'response_function_call.g.dart';

/// {@template openai_chat_completion_response_function_model}
/// This represents the response function of the [OpenAIChatCompletionChoiceMessageModel] model of the OpenAI API, which is used in the [OpenAIChat] methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIResponseFunction extends Equatable {
  /// {@macro openai_chat_completion_response_function_model}
  const OpenAIResponseFunction({
    required this.arguments,
    this.name,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIResponseFunction.fromJson(Map<String, dynamic> json) =>
      _$OpenAIResponseFunctionFromJson(json);

  /// The name of the function.
  @JsonKey(name: 'name')
  final String? name;

  /// The arguments of the function.
  @JsonKey(name: 'arguments')
  final dynamic arguments;

  /// Whether the function has a name.
  bool get hasName => name != null;

  /// Whether the function has arguments.
  bool get haveArguments => arguments != null;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() => _$OpenAIResponseFunctionToJson(this);

  @override
  List<Object?> get props => [name, arguments];

  @override
  String toString() =>
      'OpenAIResponseFunction(name: $name, arguments: $arguments)';
}
