import 'package:json_annotation/json_annotation.dart';

import 'license.dart';

part 'phonetic.g.dart';

@JsonSerializable()
class Phonetic {
	String? text;
	String? audio;
	String? sourceUrl;
	License? license;

	Phonetic({this.text, this.audio, this.sourceUrl, this.license});

	@override
	String toString() {
		return 'Phonetic(text: $text, audio: $audio, sourceUrl: $sourceUrl, license: $license)';
	}

	factory Phonetic.fromJson(Map<String, dynamic> json) {
		return _$PhoneticFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PhoneticToJson(this);

	Phonetic copyWith({
		String? text,
		String? audio,
		String? sourceUrl,
		License? license,
	}) {
		return Phonetic(
			text: text ?? this.text,
			audio: audio ?? this.audio,
			sourceUrl: sourceUrl ?? this.sourceUrl,
			license: license ?? this.license,
		);
	}
}
