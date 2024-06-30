import 'package:json_annotation/json_annotation.dart';

import 'license.dart';
import 'meaning.dart';
import 'phonetic.dart';

part 'meanings.g.dart';

@JsonSerializable()
class Meanings {
	String? word;
	String? phonetic;
	List<Phonetic>? phonetics;
	List<Meaning>? meanings;
	License? license;
	List<String>? sourceUrls;

	Meanings({
		this.word, 
		this.phonetic, 
		this.phonetics, 
		this.meanings, 
		this.license, 
		this.sourceUrls, 
	});

	@override
	String toString() {
		return 'Meanings(word: $word, phonetic: $phonetic, phonetics: $phonetics, meanings: $meanings, license: $license, sourceUrls: $sourceUrls)';
	}

	factory Meanings.fromJson(Map<String, dynamic> json) {
		return _$MeaningsFromJson(json);
	}

	Map<String, dynamic> toJson() => _$MeaningsToJson(this);

	Meanings copyWith({
		String? word,
		String? phonetic,
		List<Phonetic>? phonetics,
		List<Meaning>? meanings,
		License? license,
		List<String>? sourceUrls,
	}) {
		return Meanings(
			word: word ?? this.word,
			phonetic: phonetic ?? this.phonetic,
			phonetics: phonetics ?? this.phonetics,
			meanings: meanings ?? this.meanings,
			license: license ?? this.license,
			sourceUrls: sourceUrls ?? this.sourceUrls,
		);
	}
}
