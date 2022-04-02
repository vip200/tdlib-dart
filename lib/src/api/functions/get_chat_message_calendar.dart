import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about the next messages of the specified type in the
/// chat split by days. Returns the results in reverse chronological order.
/// Can return partial result for the last returned day. Behavior of this
/// method depends on the value of the option "utc_time_offset"
/// Returns [MessageCalendar]
class GetChatMessageCalendar extends TdFunction {
  GetChatMessageCalendar(
      {required this.chatId,
      required this.filter,
      required this.fromMessageId});

  /// [chatId] Identifier of the chat in which to return information about
  /// messages
  final int chatId;

  /// [filter] Filter for message content. Filters searchMessagesFilterEmpty,
  /// searchMessagesFilterMention and searchMessagesFilterUnreadMention are
  /// unsupported in this function
  final SearchMessagesFilter filter;

  /// [fromMessageId] The message identifier from which to return information
  /// about messages; use 0 to get results from the last message
  final int fromMessageId;

  static const String CONSTRUCTOR = 'getChatMessageCalendar';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'filter': this.filter.toJson(),
        'from_message_id': this.fromMessageId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
