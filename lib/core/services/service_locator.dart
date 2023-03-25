import 'package:get_it/get_it.dart';
import 'package:it_network/data/datasource/network_remote_data_source.dart';
import 'package:it_network/data/datasource/security_remote_data_source.dart';
import 'package:it_network/data/datasource/ubnt_remote_data_source.dart';
import 'package:it_network/data/repository/network_repostiory.dart';
import 'package:it_network/data/repository/security_repostiory.dart';
import 'package:it_network/domain/repository/base_Security_repository.dart';
import 'package:it_network/domain/repository/base_network_repository.dart';
import 'package:it_network/domain/repository/base_ubnt_repository.dart';
import 'package:it_network/domain/usecases/networkCategory/add_controller_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_router_use_case.dart';
import 'package:it_network/domain/usecases/networkCategory/add_switch_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_analog_camera_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_ip_camera_use_case.dart';
import 'package:it_network/domain/usecases/securityCategory/add_nvr_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_device_model_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2p_access_point_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/add_p2p_station_use_case.dart';
import 'package:it_network/domain/usecases/ubntCategory/get_device_model_use_case.dart';
import 'package:it_network/presentation/controller/networkCategory/network_bloc.dart';

import '../../data/repository/ubnt_repostiory.dart';
import '../../domain/usecases/networkCategory/add_access_point_use_case.dart';
import '../../domain/usecases/securityCategory/add_dvr_use_case.dart';
import '../../domain/usecases/ubntCategory/add_p2mp_access_point_use_case.dart';
import '../../domain/usecases/ubntCategory/add_p2mp_station_use_case.dart';
import '../../presentation/controller/securityCategory/security_bloc.dart';
import '../../presentation/controller/ubntCategory/ubnt_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void setup() {
    /// Blocs
    sl.registerFactory(() => UbntBloc(sl(), sl(), sl(), sl(), sl(), sl()));
    sl.registerFactory(() => NetworkBloc(sl(), sl(), sl(), sl()));
    sl.registerFactory(() => SecurityBloc(sl(), sl(), sl(), sl()));

    /// Remote Data Source
    sl.registerLazySingleton<BaseUbntRemoteDataSource>(() => UbntRemoteDataSource());
    sl.registerLazySingleton<BaseNetworkRemoteDataSource>(() => NetworkRemoteDataSource());
    sl.registerLazySingleton<BaseSecurityRemoteDataSource>(() => SecurityRemoteDataSource());

    /// Base Repository
    sl.registerLazySingleton<BaseUbntRepository>(() => UbntRepository(sl()));
    sl.registerLazySingleton<BaseNetworkRepository>(() => NetworkRepository(sl()));
    sl.registerLazySingleton<BaseSecurityRepository>(() => SecurityRepository(sl()));

    ///Ubnt Use Cases
    /// 1.add device model 2. get device models  3.add P2P AccessPoint
    /// 4.add P2MP AccessPoint  5.add P2P Station 6.add P2MP Station
    sl.registerLazySingleton<AddDeviceModelUseCase>(() => AddDeviceModelUseCase(sl()));
    sl.registerLazySingleton<GetDeviceModelUseCase>(() => GetDeviceModelUseCase(sl()));
    sl.registerLazySingleton<AddP2PAccessPointUseCase>(() => AddP2PAccessPointUseCase(sl()));
    sl.registerLazySingleton<AddP2MPAccessPointUseCase>(() => AddP2MPAccessPointUseCase(sl()));
    sl.registerLazySingleton<AddP2PStationUseCase>(() => AddP2PStationUseCase(sl()));
    sl.registerLazySingleton<AddP2MPStationUseCase>(() => AddP2MPStationUseCase(sl()));

    ///Network Use Cases  1.add Controller  2.add Access Point  3.add Router 4.add Switch
    sl.registerLazySingleton<AddControllerUseCase>(() => AddControllerUseCase(sl()));
    sl.registerLazySingleton<AddAccessPointUseCase>(() => AddAccessPointUseCase(sl()));
    sl.registerLazySingleton<AddRouterUseCase>(() => AddRouterUseCase(sl()));
    sl.registerLazySingleton<AddSwitchUseCase>(() => AddSwitchUseCase(sl()));

    ///Security Use Cases  1.add NVR  2.add DVR  3.add IP Camera 4.add Analog Camera
    sl.registerLazySingleton<AddNVRUseCase>(() => AddNVRUseCase(sl()));
    sl.registerLazySingleton<AddDVRUseCase>(() => AddDVRUseCase(sl()));
    sl.registerLazySingleton<AddIpCameraUseCase>(() => AddIpCameraUseCase(sl()));
    sl.registerLazySingleton<AddAnalogCameraUseCase>(() => AddAnalogCameraUseCase(sl()));
  }
}