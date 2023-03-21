import '../../../domain/entities/networkCategory/switch.dart';

class SwitchModel extends Switch{
  const SwitchModel(super.modelId, super.serialNumber, super.ip, super.macAddress, super.controllerMac, super.userName, super.password, super.numOfPorts, super.areaId, super.details, super.location, super.lat, super.long);

  factory SwitchModel.fromJson(Map<String, dynamic> json){
    return SwitchModel(
        json['modelId'],
        json['serialNumber'],
        json['ip'],
        json['macAddress'],
        json['controllerMac'],
        json['userName'],
        json['password'],
        json['numOfPorts'],
        json['areaId'],
        json['details']??"",
        json['location']??"",
        double.parse(json['lat'].toString()),
        double.parse(json['long'].toString()));
  }
}