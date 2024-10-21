import '../chat.dart';

// ignore: avoid_classes_with_only_static_members
/// This is a mixin class that contains  helper function(s) to adapt old text-based content to the new implementation of the content that accepts a list of content types like images.
mixin class OpenAIMessageDynamicContentFromFieldAdapter {
  /// This is a helper function to adapt old text-based content to the new implementation of the content that accepts a list of content types like images..
  static List<OpenAIChatCompletionChoiceMessageContentItemModel>
      dynamicContentFromField(
    // ignore: type_annotate_public_apis
    fieldData,
  ) {
    if (fieldData is String) {
      return _singleItemListFrom(fieldData);
    } else if (fieldData is List) {
      return _listOfContentItemsFrom(fieldData);
    } else {
      throw Exception(
        'Invalid content type, nor text or list, please report this issue.',
      );
    }
  }

  static List<OpenAIChatCompletionChoiceMessageContentItemModel>
      _singleItemListFrom(String directTextContent) {
    return [
      OpenAIChatCompletionChoiceMessageContentItemModel.text(
        directTextContent,
      ),
    ];
  }

  static List<OpenAIChatCompletionChoiceMessageContentItemModel>
      _listOfContentItemsFrom(List<dynamic> listOfContentsItems) {
    return listOfContentsItems.map((item) {
      if (item is! Map<String, dynamic>) {
        throw ArgumentError(
          'Invalid content item, expected a map. Please report this issue.',
        );
      }
      return OpenAIChatCompletionChoiceMessageContentItemModel.fromJson(item);
    }).toList();
  }
}
