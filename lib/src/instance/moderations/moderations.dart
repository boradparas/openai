import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../core/base/moderations/base.dart';
import '../../core/builder/base_api_url.dart';
import '../../core/constants/strings.dart';
import '../../core/models/moderation/moderation.dart';
import '../../core/networking/client.dart';
import '../../core/utils/logger.dart';

/// {@template openai_moderation}
/// The class that handles all the requests related to the moderation in the OpenAI API.
/// {@endtemplate}
@immutable
@protected
interface class OpenAIModeration implements OpenAIModerationBase {
  /// {@macro openai_moderation}
  OpenAIModeration() {
    OpenAILogger.logEndpoint(endpoint);
  }
  @override
  String get endpoint => OpenAIStrings.endpoints.moderation;

  /// Creates a moderation request.
  ///
  ///
  /// [input] is the input text to classify.
  ///
  ///
  /// [model] is the used model for this operation, two content moderation models are available: "text-moderation-stable" and "text-moderation-latest".
  /// The default is text-moderation-latest which will be automatically upgraded over time. This ensures you are always using our most accurate model. If you use text-moderation-stable, we will provide advanced notice before updating the model. Accuracy of text-moderation-stable may be slightly lower than for text-moderation-latest.
  ///
  ///
  /// Example:
  /// ```dart
  /// final moderation = await openai.moderation.create(
  ///  input: "I will kill your mates before I will cut your head off",
  /// );
  ///
  /// print(moderation.results); // ...
  /// print(moderation.results.first.categories.hate); // ...
  /// ```
  @override
  Future<OpenAIModerationModel> create({
    required String input,
    String? model,
    http.Client? client,
  }) async {
    return OpenAINetworkingClient.post<OpenAIModerationModel>(
      onSuccess: (response) {
        return OpenAIModerationModel.fromMap(response);
      },
      body: {
        'input': input,
        if (model != null) 'model': model,
      },
      to: BaseApiUrlBuilder.build(endpoint),
    );
  }
}
