import 'package:json_annotation/json_annotation.dart';

part 'definition.g.dart';

@JsonSerializable()
class Definition {
  String? definition;
  List<dynamic>? synonyms;
  List<dynamic>? antonyms;
  String? example;

  Definition({this.definition, this.synonyms, this.antonyms, this.example});

  @override
  String toString() {
    return 'Definition(definition: $definition, synonyms: $synonyms, antonyms: $antonyms, example: $example)';
  }

  factory Definition.fromJson(Map<String, dynamic> json) {
    return _$DefinitionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DefinitionToJson(this);

  Definition copyWith({
    String? definition,
    List<dynamic>? synonyms,
    List<dynamic>? antonyms,
    String? example,
  }) {
    return Definition(
      definition: definition ?? this.definition,
      synonyms: synonyms ?? this.synonyms,
      antonyms: antonyms ?? this.antonyms,
      example: example ?? this.example,
    );
  }
}
