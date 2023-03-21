
import '../../../domain/entities/ubntCategory/p2mp_access_point.dart';

class P2MPAccessPointModel extends P2MPAccessPoint {
  const P2MPAccessPointModel(super.deviceId, super.modelId, super.ip, super.macAddress, super.modeId, super.ssid, super.encryption, super.userName, super.password, super.areaId, super.details, super.isAssociated, super.associatedTo, super.lat, super.long);

  factory P2MPAccessPointModel.fromJson(Map<String, dynamic> json){
    return P2MPAccessPointModel(
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
        json['longitude']);
  }
}