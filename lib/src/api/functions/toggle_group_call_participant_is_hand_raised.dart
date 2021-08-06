import '../tdapi.dart';

/// Toggles whether a group call participant hand is rased
/// Returns [Ok]
class ToggleGroupCallParticipantIsHandRaised extends TdFunction {
  ToggleGroupCallParticipantIsHandRaised(
      {required this.groupCallId,
      required this.participant,
      required this.isHandRaised});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participant] Participant identifier
  final MessageSender participant;

  /// [isHandRaised] Pass true if the user's hand should be raised. Only self
  /// hand can be raised. Requires groupCall.can_be_managed group call flag to
  /// lower other's hand
  final bool isHandRaised;

  static const String CONSTRUCTOR = 'toggleGroupCallParticipantIsHandRaised';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant': this.participant.toJson(),
        'is_hand_raised': this.isHandRaised,
        '@type': CONSTRUCTOR
      };
}