import 'package:dartz/dartz.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/entities/ubntCategory/device_model.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_device_model_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2mp_access_point_use_case.dart';

import '../../data/model/ubntCategory/device_model_model.dart';
import '../usecases/ubntCategory/add_p2mp_station_use_case.dart';
import '../usecases/ubntCategory/add_p2p_access_point_use_case.dart';
import '../usecases/ubntCategory/add_p2p_station_use_case.dart';
abstract class BaseUbntRepository {

  Future<Either<Failure, String>> addDeviceModel(AddDeviceModelParameters parameters);
  Future<Either<Failure, List<DeviceMModel>>> getDeviceModel(NoParameters parameters);
  Future<Either<Failure, String>> addP2PAccessPoint(AddP2PAccessPointParameters parameters);
  Future<Either<Failure, String>> addP2PStation(AddP2PStationParameters parameters);
  Future<Either<Failure, String>> addP2MPAccessPoint(AddP2MPAccessPointParameters parameters);
  Future<Either<Failure, String>> addP2MPStation(AddP2MPStationParameters parameters);

}