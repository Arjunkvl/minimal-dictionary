import 'package:json_annotation/json_annotation.dart';

part 'no_meaning.g.dart';

@JsonSerializable()
class NoMeaning {
	String? title;
	String? message;
	String? resolution;

	NoMeaning({this.title, this.message, this.resolution});

	@override
	String toString() {
		return 'NoMeaning(title: $title, message: $message, resolution: $resolution)';
	}

	factory NoMeaning.fromJson(Map<String, dynamic> json) {
		return _$NoMeaningFromJson(json);
	}

	Map<String, dynamic> toJson() => _$NoMeaningToJson(this);
}
