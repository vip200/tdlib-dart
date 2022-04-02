import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Succeeds after a specified amount of time has passed. Can be called before
/// initialization
/// Returns [Ok]
class SetAlarm extends TdFunction {
  SetAlarm({required this.seconds});

  /// [seconds] Number of seconds before the function returns
  final double seconds;

  static const String CONSTRUCTOR = 'setAlarm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'seconds': this.seconds, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
