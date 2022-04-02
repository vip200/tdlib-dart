import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the first and last name of the current user
/// Returns [Ok]
class SetName extends TdFunction {
  SetName({required this.firstName, this.lastName});

  /// [firstName] The new value of the first name for the current user; 1-64
  /// characters
  final String firstName;

  /// [lastName] The new value of the optional last name for the current user;
  /// 0-64 characters
  final String? lastName;

  static const String CONSTRUCTOR = 'setName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'first_name': this.firstName,
        'last_name': this.lastName,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
