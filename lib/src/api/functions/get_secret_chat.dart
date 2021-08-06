import '../tdapi.dart';

/// Returns information about a secret chat by its identifier. This is an
/// offline request
/// Returns [SecretChat]
class GetSecretChat extends TdFunction {
  GetSecretChat({required this.secretChatId});

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String CONSTRUCTOR = 'getSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'secret_chat_id': this.secretChatId, '@type': CONSTRUCTOR};
}