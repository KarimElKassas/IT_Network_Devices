import 'package:equatable/equatable.dart';

class P2PStation extends Equatable {
  final String deviceId;
  final int modelId;
  final String ip;
  final String macAddress;
  final int modeId;
  final String p2pAccessPointId;
  final String ssid;
  final String encryption;
  final String userName;
  final String password;
  final int areaId;
  final String? details;
  final double? lat;
  final double? long;

  const P2PStation(
      this.deviceId,
      this.modelId,
      this.ip,
      this.macAddress,
      this.modeId,
      this.p2pAccessPointId,
      this.ssid,
      this.encryption,
      this.userName,
      this.password,
      this.areaId,
      this.details,
      this.lat,
      this.long);

  @override
  List<Object?> get props => [
        deviceId,
        modelId,
        ip,
        macAddress,
        modeId,
        p2pAccessPointId,
        ssid,
        encryption,
        userName,
        password,
        areaId,
        details,
        lat,
        long
      ];
}
