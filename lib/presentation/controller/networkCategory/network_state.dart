import 'package:equatable/equatable.dart';

import '../../../core/utils/enums.dart';

class NetworkState extends Equatable {

  /// Add Controller
  String addControllerMessage;
  RequestState addControllerState;

  /// Add Access Point
  String addAccessPointMessage;
  RequestState addAccessPointState;

  /// Add Router
  String addRouterMessage;
  RequestState addRouterState;

  /// Add Switch
  String addSwitchMessage;
  RequestState addSwitchState;



  NetworkState({
    this.addControllerMessage = '', this.addControllerState = RequestState.loading,
    this.addAccessPointMessage = '', this.addAccessPointState = RequestState.loading,
    this.addRouterMessage = '', this.addRouterState = RequestState.loading,
    this.addSwitchMessage = '', this.addSwitchState = RequestState.loading,
  });

  NetworkState copyWith({
    String? addControllerMessage,
    RequestState? addControllerState,
    String? addAccessPointMessage,
    RequestState? addAccessPointState,
    String? addRouterMessage,
    RequestState? addRouterState,
    String? addSwitchMessage,
    RequestState? addSwitchState,
  }) {
    return NetworkState(
      addControllerMessage: addControllerMessage ?? this.addControllerMessage,
      addControllerState: addControllerState ?? this.addControllerState,
      addAccessPointMessage: addAccessPointMessage ?? this.addAccessPointMessage,
      addAccessPointState: addAccessPointState ?? this.addAccessPointState,
      addRouterMessage: addRouterMessage ?? this.addRouterMessage,
      addRouterState: addRouterState ?? this.addRouterState,
      addSwitchMessage: addSwitchMessage ?? this.addSwitchMessage,
      addSwitchState: addSwitchState ?? this.addSwitchState,
    );
  }

  @override
  List<Object?> get props => [
    addControllerMessage, addControllerState,
    addAccessPointMessage, addAccessPointState,
    addRouterMessage, addRouterState,
    addSwitchMessage, addSwitchState
  ];
}