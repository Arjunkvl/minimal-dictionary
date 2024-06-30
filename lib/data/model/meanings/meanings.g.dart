// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meanings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meanings _$MeaningsFromJson(Map<String, dynamic> json) => Meanings(
      word: json['word'] as String?,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>?)
          ?.map((e) => Phonetic.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((e) => Meaning.fromJson(e as Map<String, dynamic>))
          .toList(),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
      sourceUrls: (json['sourceUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MeaningsToJson(Meanings instance) => <String, dynamic>{
      'word': instance.word,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics,
      'meanings': instance.meanings,
      'license': instance.license,
      'sourceUrls': instance.sourceUrls,
    };
