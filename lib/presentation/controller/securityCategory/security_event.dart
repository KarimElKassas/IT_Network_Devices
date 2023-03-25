import 'package:equatable/equatable.dart';

class SecurityEvent extends Equatable {
  const SecurityEvent();

  @override
  List<Object?> get props => [];
}

class AddNvrEvent extends SecurityEvent{
  final Map<String,dynamic> data;

  const AddNvrEvent(this.data);
}

class AddDvrEvent extends SecurityEvent{
  final Map<String,dynamic> data;

  const AddDvrEvent(this.data);
}

class AddIpCameraEvent extends SecurityEvent{
  final Map<String,dynamic> data;

  const AddIpCameraEvent(this.data);
}

class AddAnalogCameraEvent extends SecurityEvent{
  final Map<String,dynamic> data;

  const AddAnalogCameraEvent(this.data);
}