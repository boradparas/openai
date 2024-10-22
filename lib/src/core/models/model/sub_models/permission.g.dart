// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIModelModelPermission _$OpenAIModelModelPermissionFromJson(
        Map<String, dynamic> json) =>
    OpenAIModelModelPermission(
      id: json['id'] as String?,
      created: OpenAIModelModelPermission._fromJsonCreated(
          (json['created'] as num?)?.toInt()),
      allowCreateEngine: json['allow_create_engine'] as bool?,
      allowSampling: json['allow_sampling'] as bool?,
      allowLogprobs: json['allow_logprobs'] as bool?,
      allowSearchIndices: json['allow_search_indices'] as bool?,
      allowView: json['allow_view'] as bool?,
      allowFineTuning: json['allow_fine_tuning'] as bool?,
      organization: json['organization'] as String?,
      group: json['group'] as String?,
      isBlocking: json['is_blocking'] as bool?,
    );

Map<String, dynamic> _$OpenAIModelModelPermissionToJson(
        OpenAIModelModelPermission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': OpenAIModelModelPermission._toJsonCreated(instance.created),
      'allow_create_engine': instance.allowCreateEngine,
      'allow_sampling': instance.allowSampling,
      'allow_logprobs': instance.allowLogprobs,
      'allow_search_indices': instance.allowSearchIndices,
      'allow_view': instance.allowView,
      'allow_fine_tuning': instance.allowFineTuning,
      'organization': instance.organization,
      'group': instance.group,
      'is_blocking': instance.isBlocking,
    };
