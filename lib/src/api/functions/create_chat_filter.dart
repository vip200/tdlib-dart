import '../tdapi.dart';

/// Creates new chat filter. Returns information about the created chat filter
/// Returns [ChatFilterInfo]
class CreateChatFilter extends TdFunction {
  CreateChatFilter({required this.filter});

  /// [filter] Chat filter
  final ChatFilter filter;

  static const String CONSTRUCTOR = 'createChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'filter': this.filter.toJson(), '@type': CONSTRUCTOR};
}