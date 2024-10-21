import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../../../../dart_openai.dart';

export 'sub_models/delta.dart';

part 'choices.g.dart';

/// {@template openai_stream_chat_completion_choice}
/// The [OpenAIStreamChatCompletionChoiceModel] class represents the chat completion choice response model of the OpenAI API, which is used and returned while using the chat methods that leverage [Stream] functionality.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIStreamChatCompletionChoiceModel extends Equatable {
  /// {@macro openai_stream_chat_completion_choice}
  const OpenAIStreamChatCompletionChoiceModel({
    required this.index,
    required this.delta,
    this.finishReason,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIStreamChatCompletionChoiceModel.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIStreamChatCompletionChoiceModelFromJson(json);

  /// The [index] of the choice.
  final int index;

  /// The [delta] of the choice.
  final OpenAIStreamChatCompletionChoiceDeltaModel delta;

  /// The [finishReason] of the choice.
  @JsonKey(name: 'finish_reason')
  final String? finishReason;

  /// Whether the choice has a finish reason.
  bool get hasFinishReason => finishReason != null;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIStreamChatCompletionChoiceModelToJson(this);

  @override
  List<Object?> get props => [index, delta, finishReason];
}
