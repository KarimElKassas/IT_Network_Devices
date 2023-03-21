
import '../../../domain/entities/ubntCategory/p2mp_station.dart';

class P2MPStationModel extends P2MPStation {
  const P2MPStationModel(super.deviceId, super.modelId, super.ip, super.macAddress, super.modeId, super.p2pAccessPointId, super.ssid, super.encryption, super.userName, super.password, super.areaId, super.details, super.lat, super.long);

  factory P2MPStationModel.fromJson(Map<String, dynamic> json){
    return P2MPStationModel(
        json['deviceId'],
        json['modelId'],
        json['ip'],
        json['macAddress'],
        json['modeId'],
        json['p2pAccessPointId'],
        json['ssid'],
        json['encryption'],
        json['userName'],
        json['password'],
        json['areaId'],
        json['details'],
        json['latitude'],
        json['longitude']);
  }
}