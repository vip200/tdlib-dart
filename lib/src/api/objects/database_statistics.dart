import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains database statistics
class DatabaseStatistics extends TdObject {
  DatabaseStatistics({required this.statistics});

  /// [statistics] Database statistics in an unspecified human-readable format
  final String statistics;

  static const String CONSTRUCTOR = 'databaseStatistics';

  static DatabaseStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DatabaseStatistics(statistics: json['statistics']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'statistics': this.statistics, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
