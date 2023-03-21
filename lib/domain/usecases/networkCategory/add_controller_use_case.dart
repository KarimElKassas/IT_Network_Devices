import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';

import '../../repository/base_network_repository.dart';

class AddControllerUseCase extends BaseNetworkUseCase<String, AddControllerParameters>{
  BaseNetworkRepository baseNetworkRepository;

  AddControllerUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddControllerParameters parameters)async{
      return await baseNetworkRepository.addController(parameters);
  }
}

class AddControllerParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddControllerParameters(this.data);

  @override
  List<Object?> get props => [data];
}