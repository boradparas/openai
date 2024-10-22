import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'usage.g.dart';

/// {@template openai_edit_model_usage}
/// This class is used to represent the usage of an OpenAI completion.
/// {@endtemplate}
@immutable
@JsonSerializable()
final class OpenAIEditModelUsage extends Equatable {
  /// {@macro openai_edit_model_usage}
  const OpenAIEditModelUsage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  /// {@template openai_edit_model_usage}
  /// This method is used to convert a [Map<String, dynamic>] object to a [OpenAIEditModelUsage] object.
  /// {@endtemplate}
  factory OpenAIEditModelUsage.fromJson(Map<String, dynamic> json) =>
      _$OpenAIEditModelUsageFromJson(json);

  /// The number of tokens in the prompt.
  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;

  /// The number of tokens in the completion.
  @JsonKey(name: 'completion_tokens')
  final int completionTokens;

  /// The total number of tokens in the prompt and completion.
  @JsonKey(name: 'total_tokens')
  final int totalTokens;

  Map<String, dynamic> toJson() => _$OpenAIEditModelUsageToJson(this);

  @override
  List<Object?> get props => [promptTokens, completionTokens, totalTokens];

  @override
  String toString() =>
      'OpenAIEditModelUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
}
