/// {@template api_key_not_set_exception}
/// This exception is thrown when the API key is not set and the user tries to make a request.
/// {@endtemplate}
class MissingApiKeyException implements Exception {

  /// {@macro api_key_not_set_exception}
  MissingApiKeyException(this.message);
  /// The message to be displayed when the exception is thrown.
  final String message;

  @override
  String toString() {
    return message;
  }
}
