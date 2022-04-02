import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Edits the message content caption. Returns the edited message after the
/// edit is completed on the server side
/// Returns [Message]
class EditMessageCaption extends TdFunction {
  EditMessageCaption(
      {required this.chatId,
      required this.messageId,
      this.replyMarkup,
      this.caption});

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption;
  /// 0-GetOption("message_caption_length_max") characters; pass null to remove
  /// caption
  final FormattedText? caption;

  static const String CONSTRUCTOR = 'editMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup?.toJson(),
        'caption': this.caption?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
