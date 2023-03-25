import 'package:equatable/equatable.dart';

import '../../../core/utils/enums.dart';

class SecurityState extends Equatable {

  /// add nvr
  String addNvrMessage;
  RequestState addNvrState;

  /// add dvr
  String addDvrMessage;
  RequestState addDvrState;

  /// add ip camera
  String addIpCameraMessage;
  RequestState addIpCameraState;

  /// add analog Camera
  String addAnalogCameraMessage;
  RequestState addAnalogCameraState;

  SecurityState({
      this.addNvrMessage = '',
      this.addNvrState = RequestState.loading,
      this.addDvrMessage = '',
      this.addDvrState = RequestState.loading,
      this.addIpCameraMessage = '',
      this.addIpCameraState = RequestState.loading,
      this.addAnalogCameraMessage = '',
      this.addAnalogCameraState = RequestState.loading});

  SecurityState copyWith({
    String? addNvrMessage,
    RequestState? addNvrState,
    String? addDvrMessage,
    RequestState? addDvrState,
    String? addIpCameraMessage,
    RequestState? addIpCameraState,
    String? addAnalogCameraMessage,
    RequestState? addAnalogCameraState,
}){
    return SecurityState(
      addNvrMessage: addNvrMessage ?? this.addNvrMessage,
      addNvrState: addNvrState ?? this.addNvrState,
      addDvrMessage: addDvrMessage ?? this.addDvrMessage,
      addDvrState: addDvrState ?? this.addDvrState,
      addIpCameraMessage: addIpCameraMessage ?? this.addIpCameraMessage,
      addIpCameraState: addIpCameraState ?? this.addIpCameraState,
      addAnalogCameraMessage: addAnalogCameraMessage ?? this.addAnalogCameraMessage,
      addAnalogCameraState: addAnalogCameraState ?? this.addAnalogCameraState
    );
}
  @override
  List<Object?> get props => [
    addNvrMessage,
    addNvrState,
    addDvrMessage,
    addDvrState,
    addIpCameraMessage,
    addIpCameraState,
    addAnalogCameraMessage,
    addAnalogCameraState
  ];

}