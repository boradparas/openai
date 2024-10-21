/// {@template unexpected_response_exception}
///  This exception is thrown when an unexpected non-error response is got, this means that the response from the request does not have an error sign (the error field), but it is not no the success response as well.
/// {@endtemplate}
class OpenAIUnexpectedException implements Exception {

  /// {@macro unexpected_response_exception}
  OpenAIUnexpectedException(this.message, [this.rawResponseBody]);
  /// The message to be displayed when the exception is thrown.
  final String message;

  final String? rawResponseBody;

  @override
  String toString() {
    return message;
  }
}
