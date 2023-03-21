import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_bloc.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_state.dart';

import '../../core/services/service_locator.dart';
import '../controller/ubntCategory/ubnt_event.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  Map<String, dynamic> p2pAccessPointData = {
    'deviceId' : '1',
    'modelId' : 1,
    'ip' : "172.16.1.42",
    'macAddress' : 'Anis P2P Access',
    'modeId' : 2,
    'ssid' : "1500",
    'encryption' : 'weqqw',
    'userName' : 'ubnt',
    'password' : '123456',
    'areaId' : 1,
    'details' : 'no data',
    'isAssociated' : false,
    'associatedTo' : 1,
    'latitude' : 0.0,
    'longitude' : 0.0,
  };
  Map<String, dynamic> p2pStationData = {
    'deviceId' : '1',
    'modelId' : 1,
    'ip' : "172.16.1.42",
    'macAddress' : 'Anis P2P Station',
    'modeId' : 2,
    'p2pAccessPointId' : 'Anis',
    'ssid' : "1500",
    'encryption' : 'weqqw',
    'userName' : 'ubnt',
    'password' : '123456',
    'areaId' : 1,
    'details' : 'no data',
    'latitude' : 0.0,
    'longitude' : 0.0,
  };
  Map<String, dynamic> p2mpAccessPointData = {
    'deviceId' : '1',
    'modelId' : 1,
    'ip' : "172.16.2.42",
    'macAddress' : 'Anis P2MP Access',
    'modeId' : 2,
    'ssid' : "1500",
    'encryption' : 'weqqw',
    'userName' : 'ubnt',
    'password' : '123456',
    'areaId' : 1,
    'details' : 'no data',
    'isAssociated' : false,
    'associatedTo' : 1,
    'latitude' : 0.0,
    'longitude' : 0.0,
  };
  Map<String, dynamic> p2mpStationData = {
    'deviceId' : '1',
    'modelId' : 1,
    'ip' : "172.16.1.42",
    'macAddress' : 'Anis P2MP Station',
    'modeId' : 2,
    'p2mpAccessPointId' : 'Anis',
    'ssid' : "1500",
    'encryption' : 'weqqw',
    'userName' : 'ubnt',
    'password' : '123456',
    'areaId' : 1,
    'details' : 'no data',
    'latitude' : 0.0,
    'longitude' : 0.0,
  };
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create : (context) => sl<UbntBloc>(),
      child: Scaffold(
        body: BlocBuilder<UbntBloc, UbntState>(
          buildWhen: (previous, current) => previous.addP2PAccessPointState != current.addP2PAccessPointState,
          builder: (context, state) {
            var bloc = sl<UbntBloc>();

            print(state.addP2PAccessPointState);
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      bloc.add(AddP2PAccessPointEvent(p2pAccessPointData));
                    },
                    child: const Text("Send P2P Access Data"),
                  ),
                  const SizedBox(height: 4,),
                  ElevatedButton(
                    onPressed: (){
                      bloc.add(AddP2PStationEvent(p2pStationData));
                    },
                    child: const Text("Send P2P Station Data"),
                  ),
                  const SizedBox(height: 4,),
                  ElevatedButton(
                    onPressed: (){
                      bloc.add(AddP2MPAccessPointEvent(p2mpAccessPointData));
                    },
                    child: const Text("Send P2MP Access Data"),
                  ),
                  const SizedBox(height: 4,),
                  ElevatedButton(
                    onPressed: (){
                      bloc.add(AddP2MPStationEvent(p2mpStationData));
                    },
                    child: const Text("Send P2MP Station Data"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
