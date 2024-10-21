import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'content.dart';

part 'top_prob.g.dart';

/// {@template openai_chat_completion_choice_top_log_probs_content_model}
/// Model representing top log probabilities for a chat completion choice content item.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIChatCompletionChoiceTopLogProbsContentModel
    extends OpenAIChatCompletionChoiceLogProbsContentModel {
  /// {@macro openai_chat_completion_choice_top_log_probs_content_model}
  const OpenAIChatCompletionChoiceTopLogProbsContentModel({
    super.token,
    super.logprob,
    super.bytes,
  });

  /// Factory constructor for creating a new instance from a JSON map.
  factory OpenAIChatCompletionChoiceTopLogProbsContentModel.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIChatCompletionChoiceTopLogProbsContentModelFromJson(json);

  /// Converts the instance to a JSON map.
  @override
  Map<String, dynamic> toJson() =>
      _$OpenAIChatCompletionChoiceTopLogProbsContentModelToJson(this);
}
