import '../../../domain/entities/ubntCategory/p2p_access_point.dart';

class P2PAccessPointModel extends P2PAccessPoint {
  const P2PAccessPointModel(super.deviceId, super.modelId, super.ip, super.macAddress, super.modeId, super.ssid, super.encryption, super.userName, super.password, super.areaId, super.details, super.isAssociated, super.associatedTo, super.lat, super.long);

  factory P2PAccessPointModel.fromJson(Map<String, dynamic> json){
    return P2PAccessPointModel(
        json['deviceId'],
        json['modelId'],
        json['ip'],
        json['macAddress'],
        json['modeId'],
        json['ssid'],
        json['encryption'],
        json['userName'],
        json['password'],
        json['areaId'],
        json['details'],
        json['isAssociated'],
        json['associatedTo'],
        json['latitude'],
        json['longitude']
    );
  }
}