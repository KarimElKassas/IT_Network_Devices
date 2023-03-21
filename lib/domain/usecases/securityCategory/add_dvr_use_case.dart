import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/repository/base_security_repository.dart';

import '../../repository/base_network_repository.dart';

class AddDVRUseCase extends BaseNetworkUseCase<String, AddDVRParameters>{
  BaseSecurityRepository baseSecurityRepository;

  AddDVRUseCase(this.baseSecurityRepository);

  @override
  Future<Either<Failure, String>> call(AddDVRParameters parameters)async{
      return await baseSecurityRepository.addDVR(parameters);
  }
}

class AddDVRParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddDVRParameters(this.data);

  @override
  List<Object?> get props => [data];
}