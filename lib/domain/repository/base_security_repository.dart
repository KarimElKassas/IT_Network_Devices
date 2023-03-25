import 'package:dartz/dartz.dart';
import 'package:it_network/core/error/failure.dart';
import '../usecases/securityCategory/add_analog_camera_use_case.dart';
import '../usecases/securityCategory/add_dvr_use_case.dart';
import '../usecases/securityCategory/add_ip_camera_use_case.dart';
import '../usecases/securityCategory/add_nvr_use_case.dart';

abstract class BaseSecurityRepository {

  Future<Either<Failure, String>> addNVR(AddNVRParameters parameters);
  Future<Either<Failure, String>> addDVR(AddDVRParameters parameters);
  Future<Either<Failure, String>> addIpCamera(AddIpCameraParameters parameters);
  Future<Either<Failure, String>> addAnalogCamera(AddAnalogCameraParameters parameters);

}