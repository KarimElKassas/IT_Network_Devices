import '../../../domain/entities/securityCategory/analog_camera.dart';

class AnalogCameraModel extends AnalogCamera {
  const AnalogCameraModel(super.modelId, super.serialNumber, super.macAddress, super.ipRating, super.dvrMac, super.userName, super.password, super.areaId, super.details, super.location, super.lat, super.long);

  factory AnalogCameraModel.fromJson(Map<String, dynamic> json){
    return AnalogCameraModel(
        json['modelId'],
        json['serialNumber'],
        json['macAddress'],
        json['ipRating'],
        json['dvrMac'],
        json['userName'],
        json['password'],
        json['areaId'],
        json['details']??"",
        json['location']??"",
        double.parse(json['lat'].toString()),
        double.parse(json['long'].toString()));
  }

}