import 'package:equatable/equatable.dart';

class Controller extends Equatable {
  final int modelId;
  final String serialNumber;
  final String ip;
  final String macAddress;
  final String ssid;
  final String encryption;
  final String userName;
  final String password;
  final int areaId;
  final String? details;
  final String? location;
  final double lat;
  final double long;

  const Controller(
      this.modelId,
      this.serialNumber,
      this.ip,
      this.macAddress,
      this.ssid,
      this.encryption,
      this.userName,
      this.password,
      this.areaId,
      this.details,
      this.location,
      this.lat,
      this.long);

  @override
  List<Object?> get props => [
    modelId,
    serialNumber,
    ip,
    macAddress,
    ssid,
    encryption,
    userName,
    password,
    areaId,
    details,
    location,
    lat,
    long
  ];
}