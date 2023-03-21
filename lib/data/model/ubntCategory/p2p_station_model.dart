import '../../../domain/entities/ubntCategory/p2p_station.dart';

class P2PStationModel extends P2PStation {
  const P2PStationModel(super.deviceId, super.modelId, super.ip, super.macAddress, super.modeId, super.p2pAccessPointId, super.ssid, super.encryption, super.userName, super.password, super.areaId, super.details, super.lat, super.long);

  factory P2PStationModel.fromJson(Map<String, dynamic> json){
    return P2PStationModel(
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
        json['longitude'],
    );
  }
}