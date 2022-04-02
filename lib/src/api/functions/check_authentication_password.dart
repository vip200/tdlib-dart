import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Checks the authentication password for correctness. Works only when the
/// current authorization state is authorizationStateWaitPassword
/// Returns [Ok]
class CheckAuthenticationPassword extends TdFunction {
  CheckAuthenticationPassword({required this.password});

  /// [password] The password to check
  final String password;

  static const String CONSTRUCTOR = 'checkAuthenticationPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
