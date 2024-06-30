import 'package:json_annotation/json_annotation.dart';

import 'definition.dart';

part 'meaning.g.dart';

@JsonSerializable()
class Meaning {
	String? partOfSpeech;
	List<Definition>? definitions;
	List<dynamic>? synonyms;
	List<dynamic>? antonyms;

	Meaning({
		this.partOfSpeech, 
		this.definitions, 
		this.synonyms, 
		this.antonyms, 
	});

	@override
	String toString() {
		return 'Meaning(partOfSpeech: $partOfSpeech, definitions: $definitions, synonyms: $synonyms, antonyms: $antonyms)';
	}

	factory Meaning.fromJson(Map<String, dynamic> json) {
		return _$MeaningFromJson(json);
	}

	Map<String, dynamic> toJson() => _$MeaningToJson(this);

	Meaning copyWith({
		String? partOfSpeech,
		List<Definition>? definitions,
		List<dynamic>? synonyms,
		List<dynamic>? antonyms,
	}) {
		return Meaning(
			partOfSpeech: partOfSpeech ?? this.partOfSpeech,
			definitions: definitions ?? this.definitions,
			synonyms: synonyms ?? this.synonyms,
			antonyms: antonyms ?? this.antonyms,
		);
	}
}
