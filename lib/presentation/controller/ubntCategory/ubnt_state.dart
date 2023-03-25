import 'package:equatable/equatable.dart';
import 'package:it_network/data/model/ubntCategory/device_model_model.dart';

import '../../../core/utils/enums.dart';


class UbntState extends Equatable {

  /// Add Device Model
  String addDeviceModelMessage;
  RequestState addDeviceModelState;

  /// Change Selected Device Model
  DeviceMModel? changeSelectedDeviceModel;
  RequestState changeSelectedDeviceModelState;

  /// Get Device Model
  String getDeviceModelMessage;
  List<DeviceMModel> getDeviceModelList;
  RequestState getDeviceModelState;

  /// Add P2P Access Point
  String addP2PAccessPointMessage;
  RequestState addP2PAccessPointState;

  /// Add P2MP Access Point
  String addP2MPAccessPointMessage;
  RequestState addP2MPAccessPointState;

  /// Add P2P Station
  String addP2PStationMessage;
  RequestState addP2PStationState;

  /// Add P2MP Station
  String addP2MPStationMessage;
  RequestState addP2MPStationState;



  UbntState({
      this.addDeviceModelMessage = '',
      this.addDeviceModelState = RequestState.loading,
      this.changeSelectedDeviceModel,
      this.changeSelectedDeviceModelState = RequestState.loading,
      this.getDeviceModelMessage = '',
      this.getDeviceModelList = const [],
      this.getDeviceModelState = RequestState.loading,
      this.addP2PAccessPointMessage = '',
      this.addP2PAccessPointState = RequestState.loading,
      this.addP2MPAccessPointMessage = '',
      this.addP2MPAccessPointState = RequestState.loading,
      this.addP2PStationMessage = '',
      this.addP2PStationState = RequestState.loading,
      this.addP2MPStationMessage = '',
      this.addP2MPStationState = RequestState.loading,
  });

  UbntState copyWith({
    String? addDeviceModelMessage,
    String? getDeviceModelMessage,
    DeviceMModel? changeSelectedDeviceModel,
    List<DeviceMModel>? getDeviceModelList,
    String? addP2PAccessPointMessage,
    String? addP2MPAccessPointMessage,
    String? addP2PStationMessage,
    String? addP2MPStationMessage,
    RequestState? addDeviceModelState,
    RequestState? getDeviceModelState,
    RequestState? changeSelectedDeviceModelState,
    RequestState? addP2PAccessPointState,
    RequestState? addP2MPAccessPointState,
    RequestState? addP2PStationState,
    RequestState? addP2MPStationState,
  }) {
    return UbntState(
      addDeviceModelMessage: addDeviceModelMessage ?? this.addDeviceModelMessage,
      addDeviceModelState: addDeviceModelState ?? this.addDeviceModelState,
      getDeviceModelMessage: getDeviceModelMessage ?? this.getDeviceModelMessage,
      getDeviceModelList: getDeviceModelList ?? this.getDeviceModelList,
      changeSelectedDeviceModel: changeSelectedDeviceModel ?? this.changeSelectedDeviceModel,
      changeSelectedDeviceModelState: changeSelectedDeviceModelState ?? this.changeSelectedDeviceModelState,
      getDeviceModelState: getDeviceModelState ?? this.getDeviceModelState,
      addP2MPAccessPointMessage: addP2MPAccessPointMessage ?? this.addP2MPAccessPointMessage,
      addP2MPAccessPointState: addP2MPAccessPointState ?? this.addP2MPAccessPointState,
      addP2MPStationMessage: addP2MPStationMessage ?? this.addP2MPStationMessage,
      addP2MPStationState: addP2MPStationState ?? this.addP2MPStationState,
      addP2PAccessPointMessage: addP2PAccessPointMessage ?? this.addP2PAccessPointMessage,
      addP2PAccessPointState: addP2PAccessPointState ?? this.addP2PAccessPointState,
      addP2PStationMessage: addP2PStationMessage ?? this.addP2PStationMessage,
      addP2PStationState: addP2PStationState ?? this.addP2PStationState,
    );
  }

  @override
  List<Object?> get props => [
    addDeviceModelMessage,
    addDeviceModelState,
    getDeviceModelMessage,
    getDeviceModelList,
    changeSelectedDeviceModel,
    changeSelectedDeviceModelState,
    getDeviceModelState,
    addP2PAccessPointMessage,
    addP2PAccessPointState,
    addP2MPAccessPointMessage,
    addP2MPAccessPointState,
    addP2PStationMessage,
    addP2PStationState,
    addP2MPStationMessage,
    addP2MPStationState,
  ];
}
