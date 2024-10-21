import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'sub_models/choices/choices.dart';
import 'sub_models/usage.dart';

export 'sub_models/choices/choices.dart';
export 'sub_models/usage.dart';

part 'chat.g.dart';

/// {@template openai_stream_chat_completion}
/// The [OpenAIStreamChatCompletionModel] class represents the chat completion response model of the OpenAI API, which is used and returned while using the chat methods that leverage [Stream] functionality.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIStreamChatCompletionModel extends Equatable {
  /// {@macro openai_stream_chat_completion}
  const OpenAIStreamChatCompletionModel({
    required this.id,
    required this.created,
    required this.choices,
    this.systemFingerprint,
  });

  /// Creates a new instance from a JSON map.
  factory OpenAIStreamChatCompletionModel.fromJson(Map<String, dynamic> json) =>
      _$OpenAIStreamChatCompletionModelFromJson(json);

  /// The [id] of the chat completion.
  final String id;

  /// The date and time when the chat completion was [created].
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final DateTime created;

  /// The [choices] of the chat completion.
  final List<OpenAIStreamChatCompletionChoiceModel> choices;

  /// This fingerprint represents the backend configuration that the model runs with.
  @JsonKey(name: 'system_fingerprint')
  final String? systemFingerprint;

  /// Whether the chat completion has at least one choice in [choices].
  bool get haveChoices => choices.isNotEmpty;

  /// Whether the chat completion has a [systemFingerprint] or not.
  bool get haveSystemFingerprint => systemFingerprint != null;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$OpenAIStreamChatCompletionModelToJson(this);

  static DateTime _fromJson(int timestamp) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

  static int _toJson(DateTime date) => date.millisecondsSinceEpoch ~/ 1000;

  @override
  List<Object?> get props => [id, created, choices, systemFingerprint];

  @override
  String toString() {
    return 'OpenAIStreamChatCompletionModel(id: $id, created: $created, choices: $choices, systemFingerprint: $systemFingerprint)';
  }
}
