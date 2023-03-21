import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:it_network/core/error/exceptions.dart';
import 'package:it_network/domain/usecases/networkCategory/add_controller_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2mp_access_point_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2mp_station_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2p_access_point_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2p_station_use_case.dart';
abstract class BaseUbntRemoteDataSource {
  Future<String> addP2PAccessPoint(AddP2PAccessPointParameters parameters);
  Future<String> addP2PStation(AddP2PStationParameters parameters);
  Future<String> addP2MPAccessPoint(AddP2MPAccessPointParameters parameters);
  Future<String> addP2MPStation(AddP2MPStationParameters parameters);
}

class UbntRemoteDataSource extends BaseUbntRemoteDataSource {
  @override
  Future<String> addP2MPAccessPoint(AddP2MPAccessPointParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("P2MPAccessPoint").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "P2MP Access Point Added Successfully";
  }

  @override
  Future<String> addP2MPStation(AddP2MPStationParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("P2MPStation").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "P2MP Station Added Successfully";
  }

  @override
  Future<String> addP2PAccessPoint(AddP2PAccessPointParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("P2PAccessPoint").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "P2P Access Point Added Successfully";
  }

  @override
  Future<String> addP2PStation(AddP2PStationParameters parameters) async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("P2PStation").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
        throw ServerException(error.toString());
    });
    return "P2P Station Added Successfully";
  }
}