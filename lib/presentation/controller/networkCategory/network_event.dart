import 'package:equatable/equatable.dart';

class NetworkEvent extends Equatable {
  const NetworkEvent();

  @override
  List<Object?> get props => [];
}

class AddControllerEvent extends NetworkEvent {
  final Map<String, dynamic> data;

  const AddControllerEvent(this.data);
}

class AddAccessPointEvent extends NetworkEvent {
  final Map<String, dynamic> data;

  const AddAccessPointEvent(this.data);
}

class AddRouterEvent extends NetworkEvent {
  final Map<String, dynamic> data;

  const AddRouterEvent(this.data);
}

class AddSwitchEvent extends NetworkEvent {
  final Map<String, dynamic> data;

  const AddSwitchEvent(this.data);
}
