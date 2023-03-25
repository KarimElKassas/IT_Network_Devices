import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_network/core/usecase/base_network_use_case.dart';
import 'package:it_network/data/model/ubntCategory/device_model_model.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_device_model_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/get_device_model_use_case.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_event.dart';

import '../../../core/utils/enums.dart';
import '../../../domain/usecases/ubntCategory/add_p2mp_access_point_use_case.dart';
import '../../../domain/usecases/ubntCategory/add_p2mp_station_use_case.dart';
import '../../../domain/usecases/ubntCategory/add_p2p_access_point_use_case.dart';
import '../../../domain/usecases/ubntCategory/add_p2p_station_use_case.dart';
import 'ubnt_state.dart';

class UbntBloc extends Bloc<UbntEvent, UbntState> {

  AddDeviceModelUseCase addDeviceModelUseCase;
  GetDeviceModelUseCase getDeviceModelUseCase;
  AddP2PAccessPointUseCase addP2PAccessPointUseCase;
  AddP2MPAccessPointUseCase addP2MPAccessPointUseCase;
  AddP2PStationUseCase addP2PStationUseCase;
  AddP2MPStationUseCase addP2MPStationUseCase;

  DeviceMModel? selectedDeviceModel;

  static UbntBloc get(context) => BlocProvider.of(context);

  UbntBloc(this.addDeviceModelUseCase, this.getDeviceModelUseCase, this.addP2PAccessPointUseCase, this.addP2PStationUseCase,
      this.addP2MPAccessPointUseCase, this.addP2MPStationUseCase) : super(UbntState()){
      on<AddDeviceModelEvent>(_addDeviceModel);
      on<GetDeviceModelEvent>(_getDeviceModel);
      on<ChangeSelectedDeviceModelEvent>(_changeSelectedDeviceModel);
      on<AddP2PAccessPointEvent>(_addP2PAccessPoint);
      on<AddP2MPAccessPointEvent>(_addP2MPAccessPoint);
      on<AddP2PStationEvent>(_addP2PStation);
      on<AddP2MPStationEvent>(_addP2MPStation);
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

  FutureOr<void> _addDeviceModel(AddDeviceModelEvent event, Emitter<UbntState> emit)async {
    final result = await addDeviceModelUseCase(AddDeviceModelParameters(event.data));
    print("RESULT IN Device Model : $result\n");
    result.fold(
            (l) => emit(state.copyWith(addDeviceModelMessage: l.message, addDeviceModelState: RequestState.error)),
            (r) => emit(state.copyWith(addDeviceModelMessage: r, addDeviceModelState: RequestState.loaded)));
  }

  FutureOr<void> _getDeviceModel(GetDeviceModelEvent event, Emitter<UbntState> emit)async {
    final result = await getDeviceModelUseCase(const NoParameters());
    print("RESULT IN Get Device Model : $result\n");
    result.fold(
            (l) => emit(state.copyWith(getDeviceModelMessage: l.message, getDeviceModelState: RequestState.error)),
            (r) => emit(state.copyWith(getDeviceModelList: r, getDeviceModelState: RequestState.loaded)));
  }

  FutureOr<void> _changeSelectedDeviceModel(ChangeSelectedDeviceModelEvent event, Emitter<UbntState> emit) {
    selectedDeviceModel = event.model;
    emit(state.copyWith(changeSelectedDeviceModel: selectedDeviceModel, changeSelectedDeviceModelState: RequestState.loaded));
  }
}