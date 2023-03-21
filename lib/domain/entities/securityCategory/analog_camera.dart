import 'package:equatable/equatable.dart';

class AnalogCamera extends Equatable {
  final int modelId;
  final String serialNumber;
  final String macAddress;
  final String ipRating;
  final String dvrMac;
  final String userName;
  final String password;
  final int areaId;
  final String? details;
  final String? location;
  final double lat;
  final double long;

  const AnalogCamera(
      this.modelId,
      this.serialNumber,
      this.macAddress,
      this.ipRating,
      this.dvrMac,
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
    macAddress,
    ipRating,
    dvrMac,
    userName,
    password,
    areaId,
    details,
    location,
    lat,
    long
  ];
}