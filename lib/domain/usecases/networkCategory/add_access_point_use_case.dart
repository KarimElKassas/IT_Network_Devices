import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';

import '../../repository/base_network_repository.dart';

class AddAccessPointUseCase extends BaseNetworkUseCase<String, AddAccessPointParameters>{
  BaseNetworkRepository baseNetworkRepository;

  AddAccessPointUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddAccessPointParameters parameters)async{
      return await baseNetworkRepository.addAccessPoint(parameters);
  }
}

class AddAccessPointParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddAccessPointParameters(this.data);

  @override
  List<Object?> get props => [data];
}