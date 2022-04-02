import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a message thread
class MessageThreadInfo extends TdObject {
  MessageThreadInfo(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyInfo,
      required this.unreadMessageCount,
      required this.messages,
      this.draftMessage});

  /// [chatId] Identifier of the chat to which the message thread belongs
  final int chatId;

  /// [messageThreadId] Message thread identifier, unique within the chat
  final int messageThreadId;

  /// [replyInfo] Information about the message thread
  final MessageReplyInfo replyInfo;

  /// [unreadMessageCount] Approximate number of unread messages in the message
  /// thread
  final int unreadMessageCount;

  /// [messages] The messages from which the thread starts. The messages are
  /// returned in a reverse chronological order (i.e., in order of decreasing
  /// message_id)
  final List<Message> messages;

  /// [draftMessage] A draft of a message in the message thread; may be null
  final DraftMessage? draftMessage;

  static const String CONSTRUCTOR = 'messageThreadInfo';

  static MessageThreadInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageThreadInfo(
        chatId: json['chat_id'],
        messageThreadId: json['message_thread_id'],
        replyInfo: MessageReplyInfo.fromJson(json['reply_info'])!,
        unreadMessageCount: json['unread_message_count'],
        messages: List<Message>.from((json['messages'] ?? [])
            .map((item) => Message.fromJson(item))
            .toList()),
        draftMessage: DraftMessage.fromJson(json['draft_message']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_info': this.replyInfo.toJson(),
        'unread_message_count': this.unreadMessageCount,
        'messages': messages.map((item) => item.toJson()).toList(),
        'draft_message': this.draftMessage?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
