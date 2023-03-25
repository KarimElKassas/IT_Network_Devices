import 'package:equatable/equatable.dart';
import 'package:it_network/data/model/ubntCategory/device_model_model.dart';

class UbntEvent extends Equatable {
    const UbntEvent();

  @override
  List<Object?> get props => [];
}

class AddDeviceModelEvent extends UbntEvent{
  final Map<String, dynamic> data;

  const AddDeviceModelEvent(this.data);
}

class GetDeviceModelEvent extends UbntEvent{
  const GetDeviceModelEvent();
}
class ChangeSelectedDeviceModelEvent extends UbntEvent{
  final DeviceMModel model;
  const ChangeSelectedDeviceModelEvent(this.model);
}
class AddP2PAccessPointEvent extends UbntEvent{
  final Map<String, dynamic> data;

  const AddP2PAccessPointEvent(this.data);
}

class AddP2PStationEvent extends UbntEvent{
  final Map<String, dynamic> data;

  const AddP2PStationEvent(this.data);
}

class AddP2MPAccessPointEvent extends UbntEvent{
  final Map<String, dynamic> data;

  const AddP2MPAccessPointEvent(this.data);
}

class AddP2MPStationEvent extends UbntEvent{
  final Map<String, dynamic> data;

  const AddP2MPStationEvent(this.data);
}
