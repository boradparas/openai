import 'package:http/http.dart' as http;

import '../../../models/model/model.dart';

abstract class RetrieveInterface {
  Future<OpenAIModelModel> retrieve(
    String modelId, {
    http.Client? client,
  });
}
