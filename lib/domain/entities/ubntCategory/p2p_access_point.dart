import 'package:equatable/equatable.dart';

class P2PAccessPoint extends Equatable {
  final String deviceId;
  final int modelId;
  final String ip;
  final String macAddress;
  final int modeId;
  final String ssid;
  final String encryption;
  final String userName;
  final String password;
  final int areaId;
  final String? details;
  final bool isAssociated;
  final int? associatedTo;
  final double? lat;
  final double? long;

  const P2PAccessPoint(
      this.deviceId,
      this.modelId,
      this.ip,
      this.macAddress,
      this.modeId,
      this.ssid,
      this.encryption,
      this.userName,
      this.password,
      this.areaId,
      this.details,
      this.isAssociated,
      this.associatedTo,
      this.lat,
      this.long);

  @override
  List<Object?> get props => [
    deviceId,
    modelId,
    ip,
    macAddress,
    modeId,
    ssid,
    encryption,
    userName,
    password,
    areaId,
    details,
    isAssociated,
    associatedTo,
    lat,
    long
  ];

}
