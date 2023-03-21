import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:it_network/core/error/exceptions.dart';
import 'package:it_network/domain/usecases/networkCategory/add_controller_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2mp_access_point_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2mp_station_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2p_access_point_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2p_station_use_case.dart';

import '../../domain/usecases/networkCategory/add_access_point_use_case.dart';
import '../../domain/usecases/networkCategory/add_router_use_case.dart';
import '../../domain/usecases/networkCategory/add_switch_use_case.dart';
abstract class BaseNetworkRemoteDataSource {
  Future<String> addController(AddControllerParameters parameters);
  Future<String> addAccessPoint(AddAccessPointParameters parameters);
  Future<String> addRouter(AddRouterParameters parameters);
  Future<String> addSwitch(AddSwitchParameters parameters);
}

class NetworkRemoteDataSource extends BaseNetworkRemoteDataSource {
  @override
  Future<String> addController(AddControllerParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("Controller").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "Controller Added Successfully";
  }

  @override
  Future<String> addAccessPoint(AddAccessPointParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("Access Point").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "Access Point Added Successfully";
  }

  @override
  Future<String> addRouter(AddRouterParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("Router").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "Router Added Successfully";
  }

  @override
  Future<String> addSwitch(AddSwitchParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("Switch").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "Switch Added Successfully";
  }

}