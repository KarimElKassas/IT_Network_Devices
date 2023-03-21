import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/repository/base_security_repository.dart';

import '../../repository/base_network_repository.dart';

class AddIpCameraUseCase extends BaseNetworkUseCase<String, AddIpCameraParameters>{
  BaseSecurityRepository baseSecurityRepository;

  AddIpCameraUseCase(this.baseSecurityRepository);

  @override
  Future<Either<Failure, String>> call(AddIpCameraParameters parameters)async{
      return await baseSecurityRepository.addIpCamera(parameters);
  }
}

class AddIpCameraParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddIpCameraParameters(this.data);

  @override
  List<Object?> get props => [data];
}