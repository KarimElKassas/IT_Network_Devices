import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/data/model/ubntCategory/device_model_model.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';

import '../../entities/ubntCategory/device_model.dart';

class GetDeviceModelUseCase extends BaseNetworkUseCase<List<DeviceMModel>, NoParameters>{
  BaseUbntRepository baseUbntRepository;

  GetDeviceModelUseCase(this.baseUbntRepository);

  @override
  Future<Either<Failure, List<DeviceMModel>>> call(NoParameters parameters)async{
      return await baseUbntRepository.getDeviceModel(parameters);
  }
}