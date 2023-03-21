import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/repository/base_security_repository.dart';

import '../../repository/base_network_repository.dart';

class AddAnalogCameraUseCase extends BaseNetworkUseCase<String, AddAnalogCameraParameters>{
  BaseSecurityRepository baseSecurityRepository;

  AddAnalogCameraUseCase(this.baseSecurityRepository);

  @override
  Future<Either<Failure, String>> call(AddAnalogCameraParameters parameters)async{
      return await baseSecurityRepository.addAnalogCamera(parameters);
  }
}

class AddAnalogCameraParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddAnalogCameraParameters(this.data);

  @override
  List<Object?> get props => [data];
}