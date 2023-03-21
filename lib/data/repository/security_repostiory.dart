import 'package:dartz/dartz.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/domain/usecases/securityCategory/add_analog_camera_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_dvr_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_ip_camera_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_nvr_use_case.dart';

import '../../core/error/exceptions.dart';
import '../../domain/repository/base_Security_repository.dart';
import '../datasource/security_remote_data_source.dart';

class SecurityRepository extends BaseSecurityRepository {
  BaseSecurityRemoteDataSource baseSecurityRemoteDataSource;

  SecurityRepository(this.baseSecurityRemoteDataSource);

  @override
  Future<Either<Failure, String>> addAnalogCamera(AddAnalogCameraParameters parameters)async {
    final result = await baseSecurityRemoteDataSource.addAnalogCamera(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addDVR(AddDVRParameters parameters)async {
    final result = await baseSecurityRemoteDataSource.addDVR(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addIpCamera(AddIpCameraParameters parameters)async {
    final result = await baseSecurityRemoteDataSource.addIpCamera(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addNVR(AddNVRParameters parameters)async {
    final result = await baseSecurityRemoteDataSource.addNVR(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }


}