import 'package:equatable/equatable.dart';

class P2MPStation extends Equatable {
  final String deviceId;
  final int modelId;
  final String ip;
  final String macAddress;
  final int modeId;
  final String p2mpAccessPointId;
  final String ssid;
  final String encryption;
  final String userName;
  final String password;
  final int areaId;
  final String details;
  final double? lat;
  final double? long;

  const P2MPStation(
      this.deviceId,
      this.modelId,
      this.ip,
      this.macAddress,
      this.modeId,
      this.p2mpAccessPointId,
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
        p2mpAccessPointId,
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
