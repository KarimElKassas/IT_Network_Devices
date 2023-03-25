import '../../../domain/entities/ubntCategory/device_model.dart';

class DeviceMModel extends DeviceModel {
  const DeviceMModel(super.deviceModelId, super.deviceModelName);

  factory DeviceMModel.fromJson(Map<String, dynamic> json) {
    return DeviceMModel(json['deviceModelId'], json['deviceModelName']);
  }
}