import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import 'sub_models/choices.dart';

export 'sub_models/choices.dart';

@immutable
class OpenAIStreamCompletionModel {
  /// The ID of the completion.
  final String id;

  /// The date the completion was created.
  final DateTime created;

  /// The choices generated by the completion.
  final List<OpenAIStreamCompletionModelChoice> choices;

  /// The model used to generate the completion.
  final String model;

  @override
  int get hashCode {
    return id.hashCode ^ created.hashCode ^ choices.hashCode ^ model.hashCode;
  }

  /// This class is used to represent an OpenAI stream completion.
  const OpenAIStreamCompletionModel({
    required this.id,
    required this.created,
    required this.choices,
    required this.model,
  });

  /// This method is used to convert a [Map<String, dynamic>] object to a [OpenAIStreamCompletionModel] object.
  factory OpenAIStreamCompletionModel.fromJson(Map<String, dynamic> json) {
    return OpenAIStreamCompletionModel(
      id: json['id'],
      created: DateTime.fromMillisecondsSinceEpoch(json['created'] * 1000),
      choices: (json['choices'] as List)
          .map((e) => OpenAIStreamCompletionModelChoice.fromJson(e))
          .toList(),
      model: json['model'],
    );
  }

  @override
  bool operator ==(covariant OpenAIStreamCompletionModel other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.created == created &&
        listEquals(other.choices, choices) &&
        other.model == model;
  }

  @override
  String toString() {
    return 'OpenAIStreamCompletionModel(id: $id, created: $created, choices: $choices, model: $model)';
  }
}
