import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Disables the currently enabled proxy. Can be called before authorization
/// Returns [Ok]
class DisableProxy extends TdFunction {
  DisableProxy();

  static const String CONSTRUCTOR = 'disableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
