import 'package:dartz/dartz.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/domain/usecases/networkCategory/add_access_point_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_router_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_switch_use_case.dart';
import '../usecases/networkCategory/add_controller_use_case.dart';

abstract class BaseNetworkRepository {

  Future<Either<Failure, String>> addController(AddControllerParameters parameters);
  Future<Either<Failure, String>> addAccessPoint(AddAccessPointParameters parameters);
  Future<Either<Failure, String>> addRouter(AddRouterParameters parameters);
  Future<Either<Failure, String>> addSwitch(AddSwitchParameters parameters);

}