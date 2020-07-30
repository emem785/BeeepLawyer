// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/blocs/address_bloc/address_bloc.dart';
import 'application/blocs/auth_bloc/auth_bloc.dart';
import 'application/blocs/location_bloc/location_bloc.dart';
import 'application/blocs/map_bloc/map_bloc.dart';
import 'application/blocs/navigation_bloc/navigation_bloc.dart';
import 'application/blocs/payment_bloc/payment_bloc.dart';
import 'application/blocs/register_bloc/register_bloc.dart';
import 'application/blocs/sign_in_bloc/signin_bloc.dart';
import 'application/blocs/user_bloc/user_bloc.dart';
import 'domain/Interface/api_interface.dart';
import 'domain/Interface/local_storage_interface.dart';
import 'domain/Interface/location_interface.dart';
import 'domain/Interface/map_interface.dart';
import 'domain/Interface/network_interface.dart';
import 'domain/Interface/payment_interface.dart';
import 'infrastructure/register_module.dart';
import 'infrastructure/repositories/http_api_impl.dart';
import 'infrastructure/repositories/local_storage_impl.dart';
import 'infrastructure/repositories/map_helper_impl.dart';
import 'infrastructure/repositories/network_client_impl.dart';
import 'infrastructure/repositories/payment_client_impl.dart';
import 'infrastructure/repositories/user_location_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final registerModule = _$RegisterModule();
  gh.factory<Geolocator>(() => registerModule.geolocator);
  gh.lazySingleton<LocalStorageInterface>(() => LocalStorageImpl());
  gh.factory<NavigationBloc>(() => NavigationBloc());
  gh.lazySingleton<NetworkInterface>(() =>
      NetworkClientImpl(localStorageInterface: g<LocalStorageInterface>()));
  gh.factory<PaymentInterface>(() => PaymentClientImpl());
  gh.factory<UserLocationInterface>(() => UserLocationImpl(
      localStorageInterface: g<LocalStorageInterface>(),
      geolocator: g<Geolocator>()));
  gh.factory<AddressBloc>(
      () => AddressBloc(userLocation: g<UserLocationInterface>()));
  gh.lazySingleton<ApiInterface>(() => HttpApiImpl(
      localStorageRepo: g<LocalStorageInterface>(),
      client: g<NetworkInterface>()));
  gh.factory<AuthBloc>(
      () => AuthBloc(localStorageInterface: g<LocalStorageInterface>()));
  gh.factory<MapInterface>(() => MapHelperImpl(
      apiInterface: g<ApiInterface>(),
      userLocationInterface: g<UserLocationInterface>()));
  gh.factory<PaymentBloc>(() => PaymentBloc(
      localStorageInterface: g<LocalStorageInterface>(),
      paymentInterface: g<PaymentInterface>()));
  gh.factory<RegisterBloc>(() => RegisterBloc(
      localStorageInterface: g<LocalStorageInterface>(),
      apiInterface: g<ApiInterface>()));
  gh.factory<SigninBloc>(() => SigninBloc(
      localStorageInterface: g<LocalStorageInterface>(),
      apiInterface: g<ApiInterface>()));
  gh.factory<UserBloc>(() => UserBloc(
      localStorageInterface: g<LocalStorageInterface>(),
      apiInterface: g<ApiInterface>()));
  gh.factory<LocationBloc>(() => LocationBloc(
        localStorageInterface: g<LocalStorageInterface>(),
        mapInterface: g<MapInterface>(),
        userLocation: g<UserLocationInterface>(),
      ));
  gh.factory<MapBloc>(() => MapBloc(
        userLocationInterface: g<UserLocationInterface>(),
        mapInterface: g<MapInterface>(),
        apiInterface: g<ApiInterface>(),
        localStorageInterface: g<LocalStorageInterface>(),
      ));
}

class _$RegisterModule extends RegisterModule {}
