import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A supergroup or channel (with unlimited members)
class ChatTypeSupergroup extends ChatType {
  ChatTypeSupergroup({required this.supergroupId, required this.isChannel});

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  static const String CONSTRUCTOR = 'chatTypeSupergroup';

  static ChatTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSupergroup(
        supergroupId: json['supergroup_id'], isChannel: json['is_channel']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'is_channel': this.isChannel,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
