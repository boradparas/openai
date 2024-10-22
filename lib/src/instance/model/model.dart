import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../../dart_openai.dart';
import '../../core/base/model/base.dart';
import '../../core/builder/base_api_url.dart';
import '../../core/constants/strings.dart';
import '../../core/networking/client.dart';
import '../../core/utils/logger.dart';

/// {@template openai_model}
/// The class that handles all the requests related to the models in the OpenAI API.
/// {@endtemplate}
@immutable
@protected
interface class OpenAIModel implements OpenAIModelBase {
  /// {@macro openai_model}
  OpenAIModel() {
    OpenAILogger.logEndpoint(endpoint);
  }

  @override
  String get endpoint => OpenAIStrings.endpoints.models;

  /// Lists all the models available in the OpenAI API and returns a list of [OpenAIModelModel] objects.
  /// Refer to [Models](https://platform.openai.com/docs/models/models) for more information about the available models.
  ///
  /// Example:
  /// ```dart
  /// List<OpenAIModelModel> models = await OpenAI.instance.model.list();
  /// print(models.first.id);
  /// ```
  @override
  Future<List<OpenAIModelModel>> list({http.Client? client}) async {
    final response = await OpenAINetworkingClient.get<Map<String, dynamic>>(
      from: BaseApiUrlBuilder.build(endpoint),
      client: client,
    );

    final List<dynamic> data = (response['data'] ?? []) as List<dynamic>;

    return data
        .map(
          (model) => OpenAIModelModel.fromJson(model as Map<String, dynamic>),
        )
        .toList();
  }

  /// Retrieves a model by its id and returns a [OpenAIModelModel] object.
  /// If the model is not found, it will throw a [RequestFailedException].
  ///
  /// [id] is the id of the model to use for this request.
  ///
  /// Example:
  /// ```dart
  /// OpenAIModelModel model = await OpenAI.instance.model.retrieve("text-davinci-003");
  /// print(model.id);
  /// ```
  @override
  Future<OpenAIModelModel> retrieve(String id, {http.Client? client}) async {
    final response = await OpenAINetworkingClient.get<Map<String, dynamic>>(
      from: BaseApiUrlBuilder.build(endpoint, id),
      client: client,
    );

    return OpenAIModelModel.fromJson(response);
  }

  /// Deletes a fine-tuned model and returns [true] if the model has been deleted successfully.
  /// If the model is not found, it will throw a [RequestFailedException].
  ///
  /// [fineTuneId] is the id of the fine-tuned model to delete.
  ///
  /// Example:
  /// ```dart
  /// bool deleted = await OpenAI.instance.fineTune.delete("fine-tune-id");
  /// ```
  @override
  Future<bool> delete(String fineTuneId, {http.Client? client}) async {
    final deleteEndpoint = '$endpoint/$fineTuneId';
    final response = await OpenAINetworkingClient.delete<Map<String, dynamic>>(
      from: BaseApiUrlBuilder.build(deleteEndpoint),
      client: client,
      onSuccess: (response) {
        return response;
      },
    );

    return response['deleted'] as bool? ?? false;
  }
}
