import 'package:it_network/domain/entities/securityCategory/ip_camera.dart';

class IpCameraModel extends IpCamera {
  const IpCameraModel(super.modelId, super.serialNumber, super.ip, super.macAddress, super.ipRating, super.nvrMac, super.userName, super.password, super.areaId, super.details, super.location, super.lat, super.long);

  factory IpCameraModel.fromJson(Map<String, dynamic> json){
    return IpCameraModel(
        json['modelId'],
        json['serialNumber'],
        json['ip']??"",
        json['macAddress'],
        json['ipRating'],
        json['nvrMac'],
        json['userName'],
        json['password'],
        json['areaId'],
        json['details']??"",
        json['location']??"",
        double.parse(json['lat'].toString()),
        double.parse(json['long'].toString()));
  }

}