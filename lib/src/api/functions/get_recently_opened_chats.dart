import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns recently opened chats, this is an offline request. Returns chats
/// in the order of last opening
/// Returns [Chats]
class GetRecentlyOpenedChats extends TdFunction {
  GetRecentlyOpenedChats({required this.limit});

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String CONSTRUCTOR = 'getRecentlyOpenedChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'limit': this.limit, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
