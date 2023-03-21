import 'package:it_network/domain/entities/networkCategory/router.dart';

class RouterModel extends Router {
  const RouterModel(super.modelId, super.serialNumber, super.ip, super.userName, super.password, super.areaId, super.details, super.location, super.lat, super.long);

  factory RouterModel.fromJson(Map<String, dynamic> json){
    return RouterModel(
        json['modelId'],
        json['serialNumber'],
        json['ip'],
        json['userName'],
        json['password'],
        json['areaId'],
        json['details']??"",
        json['location']??"",
        double.parse(json['lat'].toString()),
        double.parse(json['long'].toString()));
  }
}