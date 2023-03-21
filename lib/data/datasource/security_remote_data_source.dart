import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:it_network/core/error/exceptions.dart';
import 'package:it_network/domain/usecases/networkCategory/add_controller_use_case.dart';

import '../../domain/usecases/networkCategory/add_access_point_use_case.dart';
import '../../domain/usecases/networkCategory/add_router_use_case.dart';
import '../../domain/usecases/networkCategory/add_switch_use_case.dart';
import '../../domain/usecases/securityCategory/add_analog_camera_use_case.dart';
import '../../domain/usecases/securityCategory/add_dvr_use_case.dart';
import '../../domain/usecases/securityCategory/add_ip_camera_use_case.dart';
import '../../domain/usecases/securityCategory/add_nvr_use_case.dart';
abstract class BaseSecurityRemoteDataSource {
  Future<String> addNVR(AddNVRParameters parameters);
  Future<String> addDVR(AddDVRParameters parameters);
  Future<String> addIpCamera(AddIpCameraParameters parameters);
  Future<String> addAnalogCamera(AddAnalogCameraParameters parameters);
}
//**//
class SecurityRemoteDataSource extends BaseSecurityRemoteDataSource {
  @override
  Future<String> addAnalogCamera(AddAnalogCameraParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("Analog Camera").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "Analog Camera Added Successfully";
  }

  @override
  Future<String> addDVR(AddDVRParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("DVR").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "DVR Added Successfully";
  }

  @override
  Future<String> addIpCamera(AddIpCameraParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("IP Camera").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "IP Camera Added Successfully";
  }

  @override
  Future<String> addNVR(AddNVRParameters parameters)async {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection("NVR").doc(parameters.data['macAddress'].toString()).set(parameters.data).then((value){
    }).catchError((error){
      throw ServerException(error.toString());
    });
    return "NVR Added Successfully";
  }


}