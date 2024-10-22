import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'permission.g.dart';

/// {@template openai_model_model_permission}
/// This class is used to represent an OpenAI model permission.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIModelModelPermission extends Equatable {
  /// {@macro openai_model_model_permission}
  const OpenAIModelModelPermission({
    this.id,
    this.created,
    this.allowCreateEngine,
    this.allowSampling,
    this.allowLogprobs,
    this.allowSearchIndices,
    this.allowView,
    this.allowFineTuning,
    this.organization,
    this.group,
    this.isBlocking,
  });

  /// Factory constructor for creating a new `OpenAIModelModelPermission` instance from a JSON map.
  factory OpenAIModelModelPermission.fromJson(Map<String, dynamic> json) =>
      _$OpenAIModelModelPermissionFromJson(json);

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson() => _$OpenAIModelModelPermissionToJson(this);

  /// The identifier of the permission.
  @JsonKey(name: 'id')
  final String? id;

  /// The time the permission was [created].
  @JsonKey(
    name: 'created',
    fromJson: _fromJsonCreated,
    toJson: _toJsonCreated,
  )
  final DateTime? created;

  /// Whether the permission allows the user to create engines.
  @JsonKey(name: 'allow_create_engine')
  final bool? allowCreateEngine;

  /// Whether the permission allows the user to sample from the model.
  @JsonKey(name: 'allow_sampling')
  final bool? allowSampling;

  /// Whether the permission allows the user to view logprobs.
  @JsonKey(name: 'allow_logprobs')
  final bool? allowLogprobs;

  /// Whether the permission allows the user to search indices.
  @JsonKey(name: 'allow_search_indices')
  final bool? allowSearchIndices;

  /// Whether the permission allows the user to view the model.
  @JsonKey(name: 'allow_view')
  final bool? allowView;

  /// Whether the permission allows the user to fine-tune the model.
  @JsonKey(name: 'allow_fine_tuning')
  final bool? allowFineTuning;

  /// The organization of the permission.
  @JsonKey(name: 'organization')
  final String? organization;

  /// The group of the permission.
  @JsonKey(name: 'group')
  final String? group;

  /// Whether the permission is blocking.
  @JsonKey(name: 'is_blocking')
  final bool? isBlocking;

  /// Custom fromJson function for the 'created' field.
  static DateTime? _fromJsonCreated(int? timestamp) => timestamp != null
      ? DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)
      : null;

  /// Custom toJson function for the 'created' field.
  static int? _toJsonCreated(DateTime? date) =>
      date != null ? date.millisecondsSinceEpoch ~/ 1000 : null;

  @override
  List<Object?> get props => [
        id,
        created,
        allowCreateEngine,
        allowSampling,
        allowLogprobs,
        allowSearchIndices,
        allowView,
        allowFineTuning,
        organization,
        group,
        isBlocking,
      ];

  @override
  String toString() {
    return 'OpenAIModelModelPermission('
        'id: $id, '
        'created: $created, '
        'allowCreateEngine: $allowCreateEngine, '
        'allowSampling: $allowSampling, '
        'allowLogprobs: $allowLogprobs, '
        'allowSearchIndices: $allowSearchIndices, '
        'allowView: $allowView, '
        'allowFineTuning: $allowFineTuning, '
        'organization: $organization, '
        'group: $group, '
        'isBlocking: $isBlocking'
        ')';
  }
}
