import 'package:json_annotation/json_annotation.dart';

part 'license.g.dart';

@JsonSerializable()
class License {
	String? name;
	String? url;

	License({this.name, this.url});

	@override
	String toString() => 'License(name: $name, url: $url)';

	factory License.fromJson(Map<String, dynamic> json) {
		return _$LicenseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LicenseToJson(this);

	License copyWith({
		String? name,
		String? url,
	}) {
		return License(
			name: name ?? this.name,
			url: url ?? this.url,
		);
	}
}
