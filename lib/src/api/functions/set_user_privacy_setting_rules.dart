import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes user privacy settings
/// Returns [Ok]
class SetUserPrivacySettingRules extends TdFunction {
  SetUserPrivacySettingRules({required this.setting, required this.rules});

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] The new privacy rules
  final UserPrivacySettingRules rules;

  static const String CONSTRUCTOR = 'setUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'setting': this.setting.toJson(),
        'rules': this.rules.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
