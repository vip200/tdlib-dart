import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Specifies the supported call protocols
class CallProtocol extends TdObject {
  CallProtocol(
      {required this.udpP2p,
      required this.udpReflector,
      required this.minLayer,
      required this.maxLayer,
      required this.libraryVersions});

  /// [udpP2p] True, if UDP peer-to-peer connections are supported
  final bool udpP2p;

  /// [udpReflector] True, if connection through UDP reflectors is supported
  final bool udpReflector;

  /// [minLayer] The minimum supported API layer; use 65
  final int minLayer;

  /// [maxLayer] The maximum supported API layer; use 65
  final int maxLayer;

  /// [libraryVersions] List of supported tgcalls versions
  final List<String> libraryVersions;

  static const String CONSTRUCTOR = 'callProtocol';

  static CallProtocol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallProtocol(
        udpP2p: json['udp_p2p'],
        udpReflector: json['udp_reflector'],
        minLayer: json['min_layer'],
        maxLayer: json['max_layer'],
        libraryVersions: List<String>.from(
            (json['library_versions'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'udp_p2p': this.udpP2p,
        'udp_reflector': this.udpReflector,
        'min_layer': this.minLayer,
        'max_layer': this.maxLayer,
        'library_versions': libraryVersions.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
