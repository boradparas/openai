import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'top_prob.dart';

part 'content.g.dart';

/// {@template openai_chat_completion_choice_log_probs_content_model}
/// Model representing log probabilities for a chat completion choice content item.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIChatCompletionChoiceLogProbsContentModel extends Equatable {
  /// {@macro openai_chat_completion_choice_log_probs_content_model}
  const OpenAIChatCompletionChoiceLogProbsContentModel({
    this.token,
    this.logprob,
    this.bytes,
    this.topLogprobs,
  });

  /// Factory constructor for creating a new instance from a JSON map.
  factory OpenAIChatCompletionChoiceLogProbsContentModel.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIChatCompletionChoiceLogProbsContentModelFromJson(json);

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIChatCompletionChoiceLogProbsContentModelToJson(this);

  /// The token.
  final String? token;

  /// The log probability.
  @JsonKey(name: 'logprob')
  final double? logprob;

  /// The bytes.
  final List<int>? bytes;

  /// The top log probabilities.
  @JsonKey(name: 'top_logprobs')
  final List<OpenAIChatCompletionChoiceTopLogProbsContentModel>? topLogprobs;

  @override
  List<Object?> get props => [token, logprob, bytes, topLogprobs];

  @override
  String toString() {
    return 'OpenAIChatCompletionChoiceLogProbsContentModel(token: $token, logprob: $logprob, bytes: $bytes, topLogprobs: $topLogprobs)';
  }
}
