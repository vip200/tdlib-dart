import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A token for Ubuntu Push Client service
class DeviceTokenUbuntuPush extends DeviceToken {
  DeviceTokenUbuntuPush({required this.token});

  /// [token] Token; may be empty to deregister a device
  final String token;

  static const String CONSTRUCTOR = 'deviceTokenUbuntuPush';

  static DeviceTokenUbuntuPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenUbuntuPush(token: json['token']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'token': this.token, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
