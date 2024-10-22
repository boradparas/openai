import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'usage.g.dart';

/// {@template openai_completion_model_usage}
/// This represents the usage of a completion response.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAICompletionModelUsage extends Equatable {
  /// {@macro openai_completion_model_usage}
  const OpenAICompletionModelUsage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  /// Factory constructor for creating a new `OpenAICompletionModelUsage` instance from a JSON map.
  factory OpenAICompletionModelUsage.fromJson(Map<String, dynamic> json) =>
      _$OpenAICompletionModelUsageFromJson(json);

  /// Creates a new instance from a map.
  factory OpenAICompletionModelUsage.fromMap(Map<String, dynamic> map) =>
      OpenAICompletionModelUsage.fromJson(map);

  /// The number of tokens in the completion.
  @JsonKey(name: 'completion_tokens')
  final int completionTokens;

  /// The number of tokens in the prompt.
  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;

  /// The total number of tokens in the prompt and completion.
  @JsonKey(name: 'total_tokens')
  final int totalTokens;

  @override
  List<Object?> get props => [promptTokens, completionTokens, totalTokens];

  @override
  String toString() =>
      'OpenAICompletionModelUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';

  /// Converts the `OpenAICompletionModelUsage` instance to a JSON map.
  Map<String, dynamic> toJson() => _$OpenAICompletionModelUsageToJson(this);
}
