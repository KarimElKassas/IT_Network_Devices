import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:it_network/core/error/failure.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';

class AddP2PStationUseCase extends BaseNetworkUseCase<String, AddP2PStationParameters>{
  BaseUbntRepository baseNetworkRepository;

  AddP2PStationUseCase(this.baseNetworkRepository);

  @override
  Future<Either<Failure, String>> call(AddP2PStationParameters parameters)async{
      return await baseNetworkRepository.addP2PStation(parameters);
  }
}

class AddP2PStationParameters extends Equatable {
  final Map<String, dynamic> data;

  const AddP2PStationParameters(this.data);

  @override
  List<Object?> get props => [data];
}