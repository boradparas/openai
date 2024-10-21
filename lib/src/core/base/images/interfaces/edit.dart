import 'dart:io';

import '../../../enum.dart';
import '../../../models/image/image/image.dart';

abstract class EditInterface {
  Future<OpenAIImageModel> edit({
    required File image,
    required String prompt, File? mask,
    int? n,
    OpenAIImageSize? size,
    OpenAIImageResponseFormat? responseFormat,
    String? user,
  });
}
