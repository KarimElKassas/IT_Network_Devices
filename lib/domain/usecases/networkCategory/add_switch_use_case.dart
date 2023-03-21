import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';

import '../../repository/base_network_repository.dart';

class AddSwitchUseCase extends BaseNetworkUseCase<String, AddSwitchParameters>{
  BaseNetworkRepository baseNetworkRepository;

  AddSwitchUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddSwitchParameters parameters)async{
      return await baseNetworkRepository.addSwitch(parameters);
  }
}

class AddSwitchParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddSwitchParameters(this.data);

  @override
  List<Object?> get props => [data];
}