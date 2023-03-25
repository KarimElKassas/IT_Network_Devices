import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';

class AddDeviceModelUseCase extends BaseNetworkUseCase<String, AddDeviceModelParameters>{
  BaseUbntRepository baseUbntRepository;

  AddDeviceModelUseCase(this.baseUbntRepository);

  @override
  Future<Either<Failure, String>> call(AddDeviceModelParameters parameters)async{
      return await baseUbntRepository.addDeviceModel(parameters);
  }
}

class AddDeviceModelParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddDeviceModelParameters(this.data);

  @override
  List<Object?> get props => [data];
}