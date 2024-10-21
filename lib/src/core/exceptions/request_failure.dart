import 'package:meta/meta.dart';

/// {@template http_request_failure_exception}
/// This exception is thrown when a request fails, from the API.
/// {@endtemplate}
@immutable
class RequestFailedException implements Exception {
  /// {@macro http_request_failure_exception}
  const RequestFailedException(this.message, this.statusCode);

  /// The error message of the request that failed, if any.
  final String message;

  /// The status code of the request that failed, if any.
  final int statusCode;

  @override
  String toString() {
    return 'RequestFailedException(message: $message, statusCode: $statusCode)';
  }
}
