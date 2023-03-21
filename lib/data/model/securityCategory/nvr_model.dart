import 'package:it_network/domain/entities/securityCategory/nvr.dart';

class NVRModel extends NVR {
  const NVRModel(super.modelId, super.serialNumber, super.ip, super.macAddress, super.numOfPorts, super.userName, super.password, super.areaId, super.details, super.location, super.lat, super.long);

  factory NVRModel.fromJson(Map<String, dynamic> json){
    return NVRModel(
        json['modelId'],
        json['serialNumber'],
        json['ip'],
        json['macAddress'],
        json['numOfPorts'],
        json['userName'],
        json['password'],
        json['areaId'],
        json['details']??"",
        json['location']??"",
        double.parse(json['lat'].toString()),
        double.parse(json['long'].toString()));
  }
}