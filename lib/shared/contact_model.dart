import 'dart:convert';

class SuggestionModel {
  final String name;
  final String suggestion;
  SuggestionModel({
    required this.name,
    required this.suggestion,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'suggestion': suggestion,
    };
  }

  @override
  String toString() => '$name suggests $suggestion';

  String toJson() => json.encode(toMap());
}
