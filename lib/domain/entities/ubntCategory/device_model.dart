import 'package:equatable/equatable.dart';

class DeviceModel extends Equatable {
  final int deviceModelId;
  final String deviceModelName;

  const DeviceModel(this.deviceModelId, this.deviceModelName);

  @override
  List<Object?> get props => [deviceModelId, deviceModelName];

}