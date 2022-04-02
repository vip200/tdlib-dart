import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An anchor
class RichTextAnchor extends RichText {
  RichTextAnchor({required this.name});

  /// [name] Anchor name
  final String name;

  static const String CONSTRUCTOR = 'richTextAnchor';

  static RichTextAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchor(name: json['name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'name': this.name, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
