import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'sub_models/content.dart';

part 'log_probs.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIChatCompletionChoiceLogProbsModel extends Equatable {
  /// {@macro openai_chat_completion_choice_log_probs_model}
  const OpenAIChatCompletionChoiceLogProbsModel({
    required this.content,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIChatCompletionChoiceLogProbsModel.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIChatCompletionChoiceLogProbsModelFromJson(json);

  /// The content containing log probabilities.
  final List<OpenAIChatCompletionChoiceLogProbsContentModel> content;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIChatCompletionChoiceLogProbsModelToJson(this);

  @override
  List<Object?> get props => [content];

  @override
  String toString() =>
      'OpenAIChatCompletionChoiceLogProbsModel(content: $content)';
}
