import 'package:dartz/dartz.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/data/datasource/ubnt_remote_data_source.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2mp_access_point_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2p_access_point_use_case.dart';

import '../../core/error/exceptions.dart';
import '../../domain/usecases/ubntCategory/add_p2mp_station_use_case.dart';
import '../../domain/usecases/ubntCategory/add_p2p_station_use_case.dart';

class UbntRepository extends BaseUbntRepository {
  BaseUbntRemoteDataSource baseUbntRemoteDataSource;

  UbntRepository(this.baseUbntRemoteDataSource);

  @override
  Future<Either<Failure, String>> addP2MPAccessPoint(AddP2MPAccessPointParameters parameters)async {
    final result = await baseUbntRemoteDataSource.addP2MPAccessPoint(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addP2MPStation(AddP2MPStationParameters parameters)async {
    final result = await baseUbntRemoteDataSource.addP2MPStation(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addP2PAccessPoint(AddP2PAccessPointParameters parameters)async {
    final result = await baseUbntRemoteDataSource.addP2PAccessPoint(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addP2PStation(AddP2PStationParameters parameters)async {
    final result = await baseUbntRemoteDataSource.addP2PStation(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }
}