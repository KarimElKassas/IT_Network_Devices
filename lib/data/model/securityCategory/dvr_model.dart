import '../../../domain/entities/securityCategory/dvr.dart';

class DVRModel extends DVR {
  const DVRModel(super.modelId, super.serialNumber, super.ip, super.macAddress, super.numOfPorts, super.userName, super.password, super.areaId, super.details, super.location, super.lat, super.long);

  factory DVRModel.fromJson(Map<String, dynamic> json){
    return DVRModel(
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