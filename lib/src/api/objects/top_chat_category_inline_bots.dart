import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A category containing frequently used chats with inline bots sorted by
/// their usage in inline mode
class TopChatCategoryInlineBots extends TopChatCategory {
  const TopChatCategoryInlineBots();

  static const String CONSTRUCTOR = 'topChatCategoryInlineBots';

  static TopChatCategoryInlineBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryInlineBots();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
