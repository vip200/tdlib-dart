import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns t.me URLs recently visited by a newly registered user
/// Returns [TMeUrls]
class GetRecentlyVisitedTMeUrls extends TdFunction {
  GetRecentlyVisitedTMeUrls({required this.referrer});

  /// [referrer] Google Play referrer to identify the user
  final String referrer;

  static const String CONSTRUCTOR = 'getRecentlyVisitedTMeUrls';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'referrer': this.referrer, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
