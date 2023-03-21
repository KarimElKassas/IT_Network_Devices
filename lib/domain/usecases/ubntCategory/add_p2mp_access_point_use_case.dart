import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';

import '../../../core/usecase/base_network_use_case.dart';

class AddP2MPAccessPointUseCase extends BaseNetworkUseCase<String, AddP2MPAccessPointParameters>{
  BaseUbntRepository baseNetworkRepository;

  AddP2MPAccessPointUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddP2MPAccessPointParameters parameters)async {
    return await baseNetworkRepository.addP2MPAccessPoint(parameters);
  }

}
class AddP2MPAccessPointParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddP2MPAccessPointParameters(this.data);

  @override
  List<Object?> get props => [data];
}