import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A page cover
class PageBlockCover extends PageBlock {
  PageBlockCover({required this.cover});

  /// [cover] Cover
  final PageBlock cover;

  static const String CONSTRUCTOR = 'pageBlockCover';

  static PageBlockCover? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCover(cover: PageBlock.fromJson(json['cover'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'cover': this.cover.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
