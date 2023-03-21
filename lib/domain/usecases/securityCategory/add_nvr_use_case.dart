import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/repository/base_security_repository.dart';

import '../../repository/base_network_repository.dart';

class AddNVRUseCase extends BaseNetworkUseCase<String, AddNVRParameters>{
  BaseSecurityRepository baseSecurityRepository;

  AddNVRUseCase(this.baseSecurityRepository);

  @override
  Future<Either<Failure, String>> call(AddNVRParameters parameters)async{
      return await baseSecurityRepository.addNVR(parameters);
  }
}

class AddNVRParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddNVRParameters(this.data);

  @override
  List<Object?> get props => [data];
}