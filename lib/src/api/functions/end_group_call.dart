import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Ends a group call. Requires groupCall.can_be_managed
/// Returns [Ok]
class EndGroupCall extends TdFunction {
  EndGroupCall({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String CONSTRUCTOR = 'endGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
