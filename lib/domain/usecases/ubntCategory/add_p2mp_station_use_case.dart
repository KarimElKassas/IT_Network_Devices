import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';

class AddP2MPStationUseCase extends BaseNetworkUseCase<String, AddP2MPStationParameters>{
  BaseUbntRepository baseNetworkRepository;

  AddP2MPStationUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddP2MPStationParameters parameters)async{
      return await baseNetworkRepository.addP2MPStation(parameters);
  }
}

class AddP2MPStationParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddP2MPStationParameters(this.data);

  @override
  List<Object?> get props => [data];
}