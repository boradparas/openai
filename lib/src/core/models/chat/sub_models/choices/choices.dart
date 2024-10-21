import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../../dart_openai.dart';
import '../../../../../instance/chat/chat.dart';
import 'sub_models/log_probs/log_probs.dart';
import 'sub_models/message.dart';

part 'choices.g.dart';

/// {@template openai_chat_completion_choice}
/// This class represents a choice of the [OpenAIChatCompletionModel] model of the OpenAI API, which is used and returned while using the [OpenAIChat] methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIChatCompletionChoiceModel extends Equatable {
  /// {@macro openai_chat_completion_choice}
  const OpenAIChatCompletionChoiceModel({
    required this.index,
    required this.message,
    this.finishReason,
    this.logprobs,
  });

  /// Creates a new instance from a map.
  factory OpenAIChatCompletionChoiceModel.fromMap(Map<String, dynamic> map) =>
      OpenAIChatCompletionChoiceModel.fromJson(map);

  /// Factory constructor for creating a new `OpenAIChatCompletionChoiceModel` instance from a JSON map.
  factory OpenAIChatCompletionChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$OpenAIChatCompletionChoiceModelFromJson(json);

  /// The [index] of the choice.
  /// This is dynamic because the API sometimes returns a [String] and sometimes an [int].
  @JsonKey(
    name: 'index',
    fromJson: _indexFromJson,
    toJson: _indexToJson,
  )
  final dynamic index;

  /// The [message] of the choice.
  @JsonKey(name: 'message')
  final OpenAIChatCompletionChoiceMessageModel message;

  /// The [finishReason] of the choice.
  @JsonKey(name: 'finish_reason')
  final String? finishReason;

  /// The log probability of the choice.
  @JsonKey(name: 'logprobs')
  final OpenAIChatCompletionChoiceLogProbsModel? logprobs;

  /// Whether the choice has a finish reason.
  bool get haveFinishReason => finishReason != null;

  /// Converts the `OpenAIChatCompletionChoiceModel` instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIChatCompletionChoiceModelToJson(this);

  /// Custom fromJson function to handle dynamic index.
  static dynamic _indexFromJson(index) {
    if (index is int) {
      return index;
    } else if (index is String) {
      return int.tryParse(index) ?? index;
    } else {
      return index;
    }
  }

  /// Custom toJson function for index.
  static dynamic _indexToJson(index) => index;

  @override
  List<Object?> get props => [index, message, finishReason, logprobs];

  @override
  String toString() {
    return 'OpenAIChatCompletionChoiceModel(index: $index, message: $message, finishReason: $finishReason, logprobs: $logprobs)';
  }
}
