import 'package:equatable/equatable.dart';

class IpCamera extends Equatable {
  final int modelId;
  final String serialNumber;
  final String? ip;
  final String macAddress;
  final String ipRating;
  final String nvrMac;
  final String userName;
  final String password;
  final int areaId;
  final String? details;
  final String? location;
  final double lat;
  final double long;

  const IpCamera(
      this.modelId,
      this.serialNumber,
      this.ip,
      this.macAddress,
      this.ipRating,
      this.nvrMac,
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
    ipRating,
    nvrMac,
    userName,
    password,
    areaId,
    details,
    location,
    lat,
    long
  ];
}