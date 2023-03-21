import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';

import '../../repository/base_network_repository.dart';

class AddRouterUseCase extends BaseNetworkUseCase<String, AddRouterParameters>{
  BaseNetworkRepository baseNetworkRepository;

  AddRouterUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddRouterParameters parameters)async{
      return await baseNetworkRepository.addRouter(parameters);
  }
}

class AddRouterParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddRouterParameters(this.data);

  @override
  List<Object?> get props => [data];
}