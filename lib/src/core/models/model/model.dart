import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'sub_models/permission.dart';

part 'model.g.dart';

/// {@template openai_model_model}
/// This class is used to represent an OpenAI model.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIModelModel extends Equatable {
  /// {@macro openai_model_model}
  const OpenAIModelModel({
    required this.id,
    required this.ownedBy,
    required this.permission,
  });

  /// Factory constructor for creating a new `OpenAIModelModel` instance from a JSON map.
  factory OpenAIModelModel.fromJson(Map<String, dynamic> json) =>
      _$OpenAIModelModelFromJson(json);

  /// The identifier of the model.
  @JsonKey(name: 'id')
  final String id;

  /// The name of the organization that owns the model.
  @JsonKey(name: 'owned_by')
  final String ownedBy;

  /// The [permission]s of the model.
  @JsonKey(name: 'permission')
  final List<OpenAIModelModelPermission>? permission;

  @override
  List<Object?> get props => [id, ownedBy, permission];

  @override
  String toString() =>
      'OpenAIModelModel(id: $id, ownedBy: $ownedBy, permission: $permission)';

  /// Whether the model has at least one permission in [permission].
  bool get havePermission => permission != null;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() => _$OpenAIModelModelToJson(this);
}
