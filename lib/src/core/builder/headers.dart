import 'package:meta/meta.dart';
import '../utils/logger.dart';

// ignore: avoid_classes_with_only_static_members
/// {@template headers_builder}
/// Responsible for constructing headers for all HTTP requests.
/// {@endtemplate}
@immutable
@internal
abstract class HeadersBuilder {
  /// {@macro headers_builder}
  ///
  /// **Note:** This class uses static members to maintain state across the application.
  /// Ensure thread safety if accessed from multiple isolates.

  /// The API key used for authorization.
  static String? _apiKey;

  /// The organization ID associated with the API key.
  static String? _organization;

  /// Additional headers to include in every request.
  static final Map<String, String> _additionalHeaders = {};

  /// Retrieves the current organization ID.
  @internal
  static String? get organization => _organization;

  /// Indicates whether an organization ID has been set.
  static bool get isOrganizationSet => _organization != null;

  /// Retrieves the current API key.
  @internal
  static String? get apiKey => _apiKey;

  /// Sets the organization ID and logs the change.
  ///
  /// If `organizationId` is `null`, it clears the organization ID.
  @internal
  static set organization(String? organizationId) {
    _organization = organizationId;
    OpenAILogger.logOrganization(_organization);
  }

  /// Sets the API key and logs the change.
  ///
  /// If `apiKey` is `null`, it clears the API key.
  @internal
  static set apiKey(String? apiKey) {
    _apiKey = apiKey;
    OpenAILogger.logAPIKey(_apiKey);
  }

  /// Builds and returns the headers map for HTTP requests.
  ///
  /// Throws an [AssertionError] if the API key is not set during debug mode.
  ///
  /// - Always includes the `'Content-Type': 'application/json'` header.
  /// - Includes the `'Authorization'` header with the bearer token.
  /// - If an organization ID is set, includes the `'OpenAI-Organization'` header.
  /// - Merges any additional headers provided via [includeHeaders].
  @internal
  static Map<String, String> build() {
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_apiKey',
      if (isOrganizationSet) 'OpenAI-Organization': organization!,
      ..._additionalHeaders,
    };

    assert(
      _apiKey != null,
      'API key must be set before building headers for a request.',
    );

    return headers;
  }

  /// Adds or updates headers that will be included in all subsequent requests.
  ///
  /// - Merges the provided [headers] with existing additional headers.
  /// - Overwrites existing headers if keys conflict.
  ///
  /// Example:
  /// ```dart
  /// HeadersBuilder.includeHeaders({'Custom-Header': 'Value'});
  /// ```
  @internal
  static void includeHeaders(Map<String, String> headers) {
    _additionalHeaders.addAll(headers);
    OpenAILogger.logIncludedHeaders(_additionalHeaders);
  }

  /// Clears all additional headers.
  ///
  /// This method can be used to reset the additional headers to an empty state.
  ///
  /// Example:
  /// ```dart
  /// HeadersBuilder.clearAdditionalHeaders();
  /// ```
  @internal
  static void clearAdditionalHeaders() {
    _additionalHeaders.clear();
    OpenAILogger.logIncludedHeaders(_additionalHeaders);
  }
}
