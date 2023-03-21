import 'package:dartz/dartz.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/data/datasource/network_remote_data_source.dart';
import 'package:it_network/domain/usecases/networkCategory/add_access_point_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_controller_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_router_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_switch_use_case.dart';

import '../../core/error/exceptions.dart';
import '../../domain/repository/base_network_repository.dart';

class NetworkRepository extends BaseNetworkRepository {
  BaseNetworkRemoteDataSource baseNetworkRemoteDataSource;

  NetworkRepository(this.baseNetworkRemoteDataSource);

  @override
  Future<Either<Failure, String>> addController(AddControllerParameters parameters)async {
    final result = await baseNetworkRemoteDataSource.addController(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addAccessPoint(AddAccessPointParameters parameters)async {
    final result = await baseNetworkRemoteDataSource.addAccessPoint(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addRouter(AddRouterParameters parameters)async {
    final result = await baseNetworkRemoteDataSource.addRouter(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> addSwitch(AddSwitchParameters parameters)async {
    final result = await baseNetworkRemoteDataSource.addSwitch(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessage));
    }
  }
}