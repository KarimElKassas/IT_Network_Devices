import 'package:equatable/equatable.dart';

class Router extends Equatable {
  final int modelId;
  final String serialNumber;
  final String ip;
  final String userName;
  final String password;
  final int areaId;
  final String? details;
  final String? location;
  final double lat;
  final double long;

  const Router(
      this.modelId,
      this.serialNumber,
      this.ip,
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
    userName,
    password,
    areaId,
    details,
    location,
    lat,
    long
  ];
}
