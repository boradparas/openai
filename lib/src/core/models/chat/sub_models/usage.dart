import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'usage.g.dart';

/// {@template openai_chat_completion_usage_model}
/// This class represents the chat completion usage model of the OpenAI API, which is used and returned while using the [OpenAIChat] methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
final class OpenAIChatCompletionUsageModel extends Equatable {
  /// {@macro openai_chat_completion_usage_model}
  const OpenAIChatCompletionUsageModel({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  /// Factory constructor for creating a new instance from a JSON map.
  factory OpenAIChatCompletionUsageModel.fromJson(Map<String, dynamic> json) =>
      _$OpenAIChatCompletionUsageModelFromJson(json);

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() => _$OpenAIChatCompletionUsageModelToJson(this);

  /// The number of tokens used for the prompt(s).
  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;

  /// The number of tokens used for the chat completion(s).
  @JsonKey(name: 'completion_tokens')
  final int completionTokens;

  /// The total number of tokens used for the chat completion(s).
  /// This is the sum of [promptTokens] and [completionTokens].
  @JsonKey(name: 'total_tokens')
  final int totalTokens;

  @override
  List<Object?> get props => [promptTokens, completionTokens, totalTokens];

  @override
  String toString() {
    return 'OpenAIChatCompletionUsageModel(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }
}
