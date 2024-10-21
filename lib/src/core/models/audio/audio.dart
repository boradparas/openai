import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../../instance/audio/audio.dart';

part 'audio.g.dart';

/// {@template openai_audio_model}
/// This class represents the audio model of the OpenAI API, which is used and returned while using the [OpenAIAudio] methods.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class OpenAIAudioModel extends Equatable {
  /// {@macro openai_audio_model}
  const OpenAIAudioModel({
    required this.text,
    this.task,
    this.language,
    this.duration,
    this.words,
    this.segments,
  });

  /// Factory constructor for creating a new `OpenAIAudioModel` instance from a map.
  factory OpenAIAudioModel.fromJson(Map<String, dynamic> json) =>
      _$OpenAIAudioModelFromJson(json);

  final double? duration;
  final String? language;
  final List<Segment>? segments;
  final String? task;

  /// The text response from the audio requests.
  /// This is the only field that is returned from the API.
  final String text;

  final List<Word>? words;

  @override
  List<Object?> get props => [text, task, language, duration, words, segments];

  @override
  String toString() {
    return 'OpenAIAudioModel(text: $text, task: $task, language: $language, duration: $duration, words: $words, segments: $segments)';
  }

  /// Converts the `OpenAIAudioModel` instance to a map.
  Map<String, dynamic> toJson() => _$OpenAIAudioModelToJson(this);
}

@immutable
@JsonSerializable()
class Word extends Equatable {
  const Word({
    required this.word,
    required this.start,
    required this.end,
  });

  /// Factory constructor for creating a new `Word` instance from a map.
  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);

  final double end;
  final double start;
  final String word;

  @override
  List<Object?> get props => [word, start, end];

  @override
  String toString() => 'Word(word: $word, start: $start, end: $end)';

  /// Converts the `Word` instance to a map.
  Map<String, dynamic> toJson() => _$WordToJson(this);
}

@immutable
@JsonSerializable()
class Segment extends Equatable {
  const Segment({
    required this.id,
    required this.seek,
    required this.start,
    required this.end,
    required this.text,
    required this.tokens,
    required this.temperature,
    required this.avgLogProb,
    required this.compressionRatio,
    required this.noSpeechProb,
  });

  /// Factory constructor for creating a new `Segment` instance from a map.
  factory Segment.fromJson(Map<String, dynamic> json) =>
      _$SegmentFromJson(json);

  @JsonKey(name: 'avg_logprob')
  final double avgLogProb;

  @JsonKey(name: 'compression_ratio')
  final double compressionRatio;

  final double end;
  final int id;

  @JsonKey(name: 'no_speech_prob')
  final double noSpeechProb;

  final int seek;
  final double start;
  final double temperature;
  final String text;
  final List<int> tokens;

  @override
  List<Object?> get props => [
        id,
        seek,
        start,
        end,
        text,
        tokens,
        temperature,
        avgLogProb,
        compressionRatio,
        noSpeechProb,
      ];

  @override
  String toString() =>
      'Segment(id: $id, seek: $seek, start: $start, end: $end, text: $text, tokens: $tokens, temperature: $temperature, avgLogProb: $avgLogProb, compressionRatio: $compressionRatio, noSpeechProb: $noSpeechProb)';

  /// Converts the `Segment` instance to a map.
  Map<String, dynamic> toJson() => _$SegmentToJson(this);
}
