import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_network/domain/usecases/networkCategory/add_access_point_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_controller_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_router_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_switch_use_case.dart';
import 'package:it_network/presentation/controller/networkCategory/network_event.dart';
import 'package:it_network/presentation/controller/networkCategory/network_state.dart';

import '../../../core/utils/enums.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  
  AddControllerUseCase addControllerUseCase;
  AddAccessPointUseCase addAccessPointUseCase;
  AddRouterUseCase addRouterUseCase;
  AddSwitchUseCase addSwitchUseCase;

  static NetworkBloc get(context) => BlocProvider.of(context);

  NetworkBloc(this.addControllerUseCase, this.addAccessPointUseCase, this.addRouterUseCase, this.addSwitchUseCase) : super(NetworkState()){
      on<AddControllerEvent>((event, emit) => _addController(event, emit));
      on<AddAccessPointEvent>((event, emit) => _addAccessPoint(event, emit));
      on<AddRouterEvent>((event, emit) => _addRouter(event, emit));
      on<AddSwitchEvent>((event, emit) => _addSwitch(event, emit));
  }

  FutureOr<void> _addController(AddControllerEvent event, Emitter<NetworkState> emit)async {
    final result = await addControllerUseCase(AddControllerParameters(event.data));
    print("RESULT IN Controller : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addControllerMessage: l.message, addControllerState: RequestState.error)),
            (r) => emit(state.copyWith(addControllerMessage: r, addControllerState: RequestState.loaded)));
  }
  FutureOr<void> _addAccessPoint(AddAccessPointEvent event, Emitter<NetworkState> emit)async {
    final result = await addAccessPointUseCase(AddAccessPointParameters(event.data));
    print("RESULT IN Access Point : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addAccessPointMessage: l.message, addAccessPointState: RequestState.error)),
            (r) => emit(state.copyWith(addAccessPointMessage: r, addAccessPointState: RequestState.loaded)));
  }
  FutureOr<void> _addRouter(AddRouterEvent event, Emitter<NetworkState> emit)async {
    final result = await addRouterUseCase(AddRouterParameters(event.data));
    print("RESULT IN Router : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addRouterMessage: l.message, addRouterState: RequestState.error)),
            (r) => emit(state.copyWith(addRouterMessage: r, addRouterState: RequestState.loaded)));
  }
  FutureOr<void> _addSwitch(AddSwitchEvent event, Emitter<NetworkState> emit)async {
    final result = await addSwitchUseCase(AddSwitchParameters(event.data));
    print("RESULT IN Switch : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addSwitchMessage: l.message, addSwitchState: RequestState.error)),
            (r) => emit(state.copyWith(addSwitchMessage: r, addSwitchState: RequestState.loaded)));
  }
}