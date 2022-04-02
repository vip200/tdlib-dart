import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An animation message (GIF-style).
class InputMessageAnimation extends InputMessageContent {
  InputMessageAnimation(
      {required this.animation,
      this.thumbnail,
      required this.addedStickerFileIds,
      required this.duration,
      required this.width,
      required this.height,
      this.caption});

  /// [animation] Animation file to be sent
  final InputFile animation;

  /// [thumbnail] Animation thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the
  /// animation, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds
  final int duration;

  /// [width] Width of the animation; may be replaced by the server
  final int width;

  /// [height] Height of the animation; may be replaced by the server
  final int height;

  /// [caption] Animation caption; pass null to use an empty caption;
  /// 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String CONSTRUCTOR = 'inputMessageAnimation';

  static InputMessageAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageAnimation(
        animation: InputFile.fromJson(json['animation'])!,
        thumbnail: InputThumbnail.fromJson(json['thumbnail']),
        addedStickerFileIds: List<int>.from(
            (json['added_sticker_file_ids'] ?? [])
                .map((item) => item)
                .toList()),
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        caption: FormattedText.fromJson(json['caption']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animation': this.animation.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'duration': this.duration,
        'width': this.width,
        'height': this.height,
        'caption': this.caption?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
