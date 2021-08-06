import '../tdapi.dart';

/// Returns messages in a message thread of a message. Can be used only if
/// message.can_get_message_thread == true. Message thread of a channel
/// message is in the channel's linked supergroup.. The messages are returned
/// in a reverse chronological order (i.e., in order of decreasing
/// message_id). For optimal performance the number of returned messages is
/// chosen by the library
/// Returns [Messages]
class GetMessageThreadHistory extends TdFunction {
  GetMessageThreadHistory(
      {required this.chatId,
      required this.messageId,
      required this.fromMessageId,
      required this.offset,
      required this.limit});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier, which thread history needs to be returned
  final int messageId;

  /// [fromMessageId] Identifier of the message starting from which history must
  /// be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the from_message_id or a
  /// negative offset up to 99 to get additionally some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. If the offset is negative, the limit must
  /// be greater than or equal to -offset. Fewer messages may be returned than
  /// specified by the limit, even if the end of the message thread history has
  /// not been reached
  final int limit;

  static const String CONSTRUCTOR = 'getMessageThreadHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'from_message_id': this.fromMessageId,
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}