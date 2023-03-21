import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';

import '../../../core/usecase/base_network_use_case.dart';

class AddP2PAccessPointUseCase extends BaseNetworkUseCase<String, AddP2PAccessPointParameters>{
  BaseUbntRepository baseNetworkRepository;

  AddP2PAccessPointUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddP2PAccessPointParameters parameters)async{
      return await baseNetworkRepository.addP2PAccessPoint(parameters);
  }
}

class AddP2PAccessPointParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddP2PAccessPointParameters(this.data);

  @override
  List<Object?> get props => [data];
}