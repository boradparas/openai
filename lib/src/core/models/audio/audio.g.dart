// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIAudioModel _$OpenAIAudioModelFromJson(Map<String, dynamic> json) =>
    OpenAIAudioModel(
      text: json['text'] as String,
      task: json['task'] as String?,
      language: json['language'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      words: (json['words'] as List<dynamic>?)
          ?.map((e) => Word.fromJson(e as Map<String, dynamic>))
          .toList(),
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenAIAudioModelToJson(OpenAIAudioModel instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'language': instance.language,
      'segments': instance.segments?.map((e) => e.toJson()).toList(),
      'task': instance.task,
      'text': instance.text,
      'words': instance.words?.map((e) => e.toJson()).toList(),
    };

Word _$WordFromJson(Map<String, dynamic> json) => Word(
      word: json['word'] as String,
      start: (json['start'] as num).toDouble(),
      end: (json['end'] as num).toDouble(),
    );

Map<String, dynamic> _$WordToJson(Word instance) => <String, dynamic>{
      'end': instance.end,
      'start': instance.start,
      'word': instance.word,
    };

Segment _$SegmentFromJson(Map<String, dynamic> json) => Segment(
      id: (json['id'] as num).toInt(),
      seek: (json['seek'] as num).toInt(),
      start: (json['start'] as num).toDouble(),
      end: (json['end'] as num).toDouble(),
      text: json['text'] as String,
      tokens: (json['tokens'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      temperature: (json['temperature'] as num).toDouble(),
      avgLogProb: (json['avg_logprob'] as num).toDouble(),
      compressionRatio: (json['compression_ratio'] as num).toDouble(),
      noSpeechProb: (json['no_speech_prob'] as num).toDouble(),
    );

Map<String, dynamic> _$SegmentToJson(Segment instance) => <String, dynamic>{
      'avg_logprob': instance.avgLogProb,
      'compression_ratio': instance.compressionRatio,
      'end': instance.end,
      'id': instance.id,
      'no_speech_prob': instance.noSpeechProb,
      'seek': instance.seek,
      'start': instance.start,
      'temperature': instance.temperature,
      'text': instance.text,
      'tokens': instance.tokens,
    };
