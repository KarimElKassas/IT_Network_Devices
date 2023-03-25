import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_network/core/utils/enums.dart';
import 'package:it_network/domain/usecases/securityCategory/add_analog_camera_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_dvr_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_ip_camera_use_case.dart';
import 'package:it_network/presentation/controller/securityCategory/security_event.dart';
import 'package:it_network/presentation/controller/securityCategory/security_state.dart';
import '../../../domain/usecases/securityCategory/add_nvr_use_case.dart';

class SecurityBloc extends Bloc<SecurityEvent, SecurityState>{

  AddNVRUseCase addNVRUseCase;
  AddDVRUseCase addDVRUseCase;
  AddIpCameraUseCase addIpCameraUseCase;
  AddAnalogCameraUseCase addAnalogCameraUseCase;

  static SecurityBloc get(context) => BlocProvider.of(context);

  SecurityBloc(this.addNVRUseCase, this.addDVRUseCase, this.addIpCameraUseCase, this.addAnalogCameraUseCase)
      : super(SecurityState()){
      on<AddNvrEvent>(_addNvr);
      on<AddDvrEvent>(_addDvr);
      on<AddIpCameraEvent>(_addIpCamera);
      on<AddAnalogCameraEvent>(_addAnalogCamera);
  }

  FutureOr<void> _addNvr(AddNvrEvent event, Emitter<SecurityState> emit)async {
    final result = await addNVRUseCase(AddNVRParameters(event.data));
    result.fold(
            (l) => emit(state.copyWith(addNvrMessage: l.message, addNvrState: RequestState.error)),
            (r) => emit(state.copyWith(addNvrMessage: r, addNvrState: RequestState.loaded)));
  }
  FutureOr<void> _addDvr(AddDvrEvent event, Emitter<SecurityState> emit)async {
    final result = await addDVRUseCase(AddDVRParameters(event.data));
    result.fold(
            (l) => emit(state.copyWith(addDvrMessage: l.message, addDvrState: RequestState.error)),
            (r) => emit(state.copyWith(addDvrMessage: r, addDvrState: RequestState.loaded)));
  }
  FutureOr<void> _addIpCamera(AddIpCameraEvent event, Emitter<SecurityState> emit)async {
    final result = await addIpCameraUseCase(AddIpCameraParameters(event.data));
    result.fold(
            (l) => emit(state.copyWith(addIpCameraMessage: l.message, addIpCameraState: RequestState.error)),
            (r) => emit(state.copyWith(addIpCameraMessage: r, addIpCameraState: RequestState.loaded)));
  }
  FutureOr<void> _addAnalogCamera(AddAnalogCameraEvent event, Emitter<SecurityState> emit)async {
    final result = await addAnalogCameraUseCase(AddAnalogCameraParameters(event.data));
    result.fold(
            (l) => emit(state.copyWith(addAnalogCameraMessage: l.message, addAnalogCameraState: RequestState.error)),
            (r) => emit(state.copyWith(addAnalogCameraMessage: r, addAnalogCameraState: RequestState.loaded)));
  }
}