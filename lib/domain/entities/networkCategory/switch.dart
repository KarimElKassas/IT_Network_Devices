import 'package:equatable/equatable.dart';

class Switch extends Equatable {
  final int modelId;
  final String serialNumber;
  final String ip;
  final String macAddress;
  final String controllerMac;
  final String userName;
  final String password;
  final String numOfPorts;
  final int areaId;
  final String? details;
  final String? location;
  final double lat;
  final double long;

  const Switch(
      this.modelId,
      this.serialNumber,
      this.ip,
      this.macAddress,
      this.controllerMac,
      this.userName,
      this.password,
      this.numOfPorts,
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
    controllerMac,
    userName,
    password,
    numOfPorts,
    areaId,
    details,
    location,
    lat,
    long
  ];
}