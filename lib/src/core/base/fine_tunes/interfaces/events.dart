import 'package:http/http.dart' as http;

import '../../../models/fine_tune/sub_models/event.dart';

abstract class EventsInterface {
  Future<List<OpenAIFineTuneEventModel>> listEvents(
    String fineTuneId, {
    http.Client? client,
  });
}
