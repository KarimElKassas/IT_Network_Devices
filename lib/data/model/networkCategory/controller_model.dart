import '../../../domain/entities/networkCategory/controller.dart';

class ControllerModel extends Controller {
  const ControllerModel(super.modelId, super.serialNumber, super.ip, super.macAddress, super.ssid, super.encryption, super.userName, super.password, super.areaId, super.details, super.location, super.lat, super.long);

  factory ControllerModel.fromJson(Map<String, dynamic> json) {
    return ControllerModel(
        json['modelId'],
        json['serialNumber'],
        json['ip'],
        json['macAddress'],
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