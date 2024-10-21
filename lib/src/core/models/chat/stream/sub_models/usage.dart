import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

export 'choices/choices.dart';

part 'usage.g.dart';

/// {@template openai_stream_chat_completion_usage}
/// The [OpenAIStreamChatCompletionUsageModel] class represents the usage model of the OpenAI API, which is used and returned while using the chat methods that leverage [Stream] functionality.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIStreamChatCompletionUsageModel extends Equatable {
  /// {@macro openai_stream_chat_completion_usage}
  const OpenAIStreamChatCompletionUsageModel({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIStreamChatCompletionUsageModel.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIStreamChatCompletionUsageModelFromJson(json);

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

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIStreamChatCompletionUsageModelToJson(this);

  @override
  List<Object?> get props => [promptTokens, completionTokens, totalTokens];

  @override
  String toString() {
    return 'OpenAIStreamChatCompletionUsageModel(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }
}
