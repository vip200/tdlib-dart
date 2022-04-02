import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Searches for a background by its name
/// Returns [Background]
class SearchBackground extends TdFunction {
  SearchBackground({required this.name});

  /// [name] The name of the background
  final String name;

  static const String CONSTRUCTOR = 'searchBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'name': this.name, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
