import 'package:it_network/domain/entities/networkCategory/access_point.dart';

class AccessPointModel extends AccessPoint {
  const AccessPointModel(super.modelId, super.serialNumber, super.ip, super.macAddress, super.controllerMac, super.ssid, super.encryption, super.userName, super.password, super.areaId, super.details, super.location, super.lat, super.long);

  factory AccessPointModel.fromJson(Map<String, dynamic> json){
    return AccessPointModel(
        json['modelId'],
        json['serialNumber'],
        json['ip'],
        json['macAddress'],
        json['controllerMac'],
        json['ssid'],
        json['encryption'],
        json['userName'],
        json['password'],
        json['areaId'],
        json['details']??"",
        json['location']??"",
        double.parse(json['lat'].toString()),
        double.parse(json['long'].toString()));
  }

}