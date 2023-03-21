import 'package:equatable/equatable.dart';

class UbntEvent extends Equatable {
    const UbntEvent();

  @override
  List<Object?> get props => [];
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
