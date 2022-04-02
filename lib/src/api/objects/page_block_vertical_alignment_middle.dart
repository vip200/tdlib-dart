import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The content must be middle-aligned
class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentMiddle();

  static const String CONSTRUCTOR = 'pageBlockVerticalAlignmentMiddle';

  static PageBlockVerticalAlignmentMiddle? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentMiddle();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
