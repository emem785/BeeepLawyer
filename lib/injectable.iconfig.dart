// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:beep_lawyer2/infrastructure/register_module.dart';
import 'package:geolocator/geolocator.dart';
import 'package:beep_lawyer2/infrastructure/repositories/local_storage_impl.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer2/application/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:beep_lawyer2/infrastructure/repositories/network_client_impl.dart';
import 'package:beep_lawyer2/domain/Interface/network_interface.dart';
import 'package:beep_lawyer2/infrastructure/repositories/user_location_impl.dart';
import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
import 'package:beep_lawyer2/infrastructure/repositories/http_api_impl.dart';
import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
import 'package:beep_lawyer2/application/blocs/auth_bloc/auth_bloc.dart';
import 'package:beep_lawyer2/infrastructure/repositories/map_helper_impl.dart';
import 'package:beep_lawyer2/domain/Interface/map_interface.dart';
import 'package:beep_lawyer2/application/blocs/register_bloc/register_bloc.dart';
import 'package:beep_lawyer2/application/blocs/sign_in_bloc/signin_bloc.dart';
import 'package:beep_lawyer2/application/blocs/user_bloc/user_bloc.dart';
import 'package:beep_lawyer2/application/blocs/location_bloc/location_bloc.dart';
import 'package:beep_lawyer2/application/blocs/map_bloc/map_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerFactory<Geolocator>(() => registerModule.geolocator);
  g.registerLazySingleton<LocalStorageInterface>(() => LocalStorageImpl());
  g.registerFactory<NavigationBloc>(() => NavigationBloc());
  g.registerLazySingleton<NetworkInterface>(() =>
      NetworkClientImpl(localStorageInterface: g<LocalStorageInterface>()));
  g.registerFactory<UserLocationInterface>(
      () => UserLocationImpl(geolocator: g<Geolocator>()));
  g.registerLazySingleton<ApiInterface>(() => HttpApiImpl(
      localStorageRepo: g<LocalStorageInterface>(),
      client: g<NetworkInterface>()));
  g.registerFactory<AuthBloc>(
      () => AuthBloc(localStorageInterface: g<LocalStorageInterface>()));
  g.registerFactory<MapInterface>(() => MapHelperImpl(
      apiInterface: g<ApiInterface>(),
      userLocationInterface: g<UserLocationInterface>()));
  g.registerFactory<RegisterBloc>(() => RegisterBloc(
      localStorageInterface: g<LocalStorageInterface>(),
      apiInterface: g<ApiInterface>()));
  g.registerFactory<SigninBloc>(() => SigninBloc(
      localStorageInterface: g<LocalStorageInterface>(),
      apiInterface: g<ApiInterface>()));
  g.registerFactory<UserBloc>(() => UserBloc(
      localStorageInterface: g<LocalStorageInterface>(),
      apiInterface: g<ApiInterface>()));
  g.registerFactory<LocationBloc>(() => LocationBloc(
        mapInterface: g<MapInterface>(),
        userLocation: g<UserLocationInterface>(),
        apiInterface: g<ApiInterface>(),
      ));
  g.registerFactory<MapBloc>(() => MapBloc(
        userLocationInterface: g<UserLocationInterface>(),
        mapInterface: g<MapInterface>(),
        apiInterface: g<ApiInterface>(),
        localStorageInterface: g<LocalStorageInterface>(),
      ));
}

class _$RegisterModule extends RegisterModule {}
