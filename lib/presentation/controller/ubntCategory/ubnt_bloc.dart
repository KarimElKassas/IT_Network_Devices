import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_event.dart';

import '../../../core/utils/enums.dart';
import '../../../domain/usecases/networkCategory/add_controller_use_case.dart';
import '../../../domain/usecases/ubntCategory/add_p2mp_access_point_use_case.dart';
import '../../../domain/usecases/ubntCategory/add_p2mp_station_use_case.dart';
import '../../../domain/usecases/ubntCategory/add_p2p_access_point_use_case.dart';
import '../../../domain/usecases/ubntCategory/add_p2p_station_use_case.dart';
import 'ubnt_state.dart';

class UbntBloc extends Bloc<UbntEvent, UbntState> {

  AddP2PAccessPointUseCase addP2PAccessPointUseCase;
  AddP2MPAccessPointUseCase addP2MPAccessPointUseCase;
  AddP2PStationUseCase addP2PStationUseCase;
  AddP2MPStationUseCase addP2MPStationUseCase;

  static UbntBloc get(context) => BlocProvider.of(context);

  UbntBloc(this.addP2PAccessPointUseCase, this.addP2PStationUseCase,
      this.addP2MPAccessPointUseCase, this.addP2MPStationUseCase) : super(UbntState()){
      on<AddP2PAccessPointEvent>((event, emit) => _addP2PAccessPoint(event, emit));
      on<AddP2MPAccessPointEvent>((event, emit) => _addP2MPAccessPoint(event, emit));
      on<AddP2PStationEvent>((event, emit) => _addP2PStation(event, emit));
      on<AddP2MPStationEvent>((event, emit) => _addP2MPStation(event, emit));
  }

  FutureOr<void> _addP2PAccessPoint(AddP2PAccessPointEvent event, Emitter<UbntState> emit)async {
      final result = await addP2PAccessPointUseCase(AddP2PAccessPointParameters(event.data));
      print("RESULT IN P2P ACCESS POINT : $result\n");
      result.fold(
              (l) => emit(state.copyWith(addP2PAccessPointMessage: l.message, addP2PAccessPointState: RequestState.error)),
              (r) => emit(state.copyWith(addP2PAccessPointMessage: r, addP2PAccessPointState: RequestState.loaded)));
  }
  FutureOr<void> _addP2MPAccessPoint(AddP2MPAccessPointEvent event, Emitter<UbntState> emit)async {
    final result = await addP2MPAccessPointUseCase(AddP2MPAccessPointParameters(event.data));
    print("RESULT IN P2MP ACCESS POINT : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addP2MPAccessPointMessage: l.message, addP2MPAccessPointState: RequestState.error)),
            (r) => emit(state.copyWith(addP2MPAccessPointMessage: r, addP2MPAccessPointState: RequestState.loaded)));
  }
  FutureOr<void> _addP2PStation(AddP2PStationEvent event, Emitter<UbntState> emit)async {
    final result = await addP2PStationUseCase(AddP2PStationParameters(event.data));
    print("RESULT IN P2P STATION : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addP2PStationMessage: l.message, addP2PStationState: RequestState.error)),
            (r) => emit(state.copyWith(addP2PStationMessage: r, addP2PStationState: RequestState.loaded)));
  }
  FutureOr<void> _addP2MPStation(AddP2MPStationEvent event, Emitter<UbntState> emit)async {
    final result = await addP2MPStationUseCase(AddP2MPStationParameters(event.data));
    print("RESULT IN P2MP STATION : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addP2MPStationMessage: l.message, addP2MPStationState: RequestState.error)),
            (r) => emit(state.copyWith(addP2MPStationMessage: r, addP2MPStationState: RequestState.loaded)));
  }
  /*FutureOr<void> _addController(AddControllerEvent event, Emitter<UbntState> emit)async {
    final result = await addControllerUseCase(AddControllerParameters(event.data));
    print("RESULT IN Controller : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addControllerMessage: l.message, addControllerState: RequestState.error)),
            (r) => emit(state.copyWith(addControllerMessage: r, addControllerState: RequestState.loaded)));
  }*/
}