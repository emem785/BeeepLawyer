// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
<<<<<<< HEAD
import 'package:injectable/injectable.dart';

import 'application/blocs/address_bloc/address_bloc.dart';
import 'domain/Interface/api_interface.dart';
import 'application/blocs/auth_bloc/auth_bloc.dart';
import 'infrastructure/repositories/http_api_impl.dart';
import 'infrastructure/repositories/local_storage_impl.dart';
import 'domain/Interface/local_storage_interface.dart';
import 'application/blocs/location_bloc/location_bloc.dart';
import 'application/blocs/map_bloc/map_bloc.dart';
import 'infrastructure/repositories/map_helper_impl.dart';
import 'domain/Interface/map_interface.dart';
import 'application/blocs/navigation_bloc/navigation_bloc.dart';
import 'infrastructure/repositories/network_client_impl.dart';
import 'domain/Interface/network_interface.dart';
import 'application/blocs/payment_bloc/payment_bloc.dart';
import 'infrastructure/repositories/payment_client_impl.dart';
import 'domain/Interface/payment_interface.dart';
import 'application/blocs/register_bloc/register_bloc.dart';
import 'infrastructure/register_module.dart';
import 'application/blocs/sign_in_bloc/signin_bloc.dart';
import 'application/blocs/user_bloc/user_bloc.dart';
import 'infrastructure/repositories/user_location_impl.dart';
import 'domain/Interface/location_interface.dart';
=======
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
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f

/// adds generated dependencies
/// to the provided [GetIt] instance

<<<<<<< HEAD
GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
=======
void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  final registerModule = _$RegisterModule();
  gh.factory<Geolocator>(() => registerModule.geolocator);
  gh.lazySingleton<LocalStorageInterface>(() => LocalStorageImpl());
  gh.factory<NavigationBloc>(() => NavigationBloc());
  gh.lazySingleton<NetworkInterface>(() =>
<<<<<<< HEAD
      NetworkClientImpl(localStorageInterface: get<LocalStorageInterface>()));
  gh.factory<PaymentInterface>(() => PaymentClientImpl());
  gh.factory<UserLocationInterface>(() => UserLocationImpl(
      localStorageInterface: get<LocalStorageInterface>(),
      geolocator: get<Geolocator>()));
  gh.lazySingleton<ApiInterface>(() => HttpApiImpl(
      localStorageRepo: get<LocalStorageInterface>(),
      client: get<NetworkInterface>()));
  gh.factory<AuthBloc>(
      () => AuthBloc(localStorageInterface: get<LocalStorageInterface>()));
  gh.factory<MapInterface>(() => MapHelperImpl(
      apiInterface: get<ApiInterface>(),
      userLocationInterface: get<UserLocationInterface>()));
  gh.factory<PaymentBloc>(() => PaymentBloc(
      localStorageInterface: get<LocalStorageInterface>(),
      paymentInterface: get<PaymentInterface>()));
  gh.factory<RegisterBloc>(() => RegisterBloc(
      localStorageInterface: get<LocalStorageInterface>(),
      apiInterface: get<ApiInterface>()));
  gh.factory<SigninBloc>(() => SigninBloc(
      localStorageInterface: get<LocalStorageInterface>(),
      apiInterface: get<ApiInterface>()));
  gh.factory<UserBloc>(() => UserBloc(
      localStorageInterface: get<LocalStorageInterface>(),
      apiInterface: get<ApiInterface>()));
  gh.factory<AddressBloc>(() => AddressBloc(
        apiInterface: get<ApiInterface>(),
        localStorageInterface: get<LocalStorageInterface>(),
        userLocationInterface: get<UserLocationInterface>(),
      ));
  gh.factory<LocationBloc>(() => LocationBloc(
        localStorageInterface: get<LocalStorageInterface>(),
        mapInterface: get<MapInterface>(),
        userLocation: get<UserLocationInterface>(),
        apiInterface: get<ApiInterface>(),
      ));
  gh.factory<MapBloc>(() => MapBloc(
        userLocationInterface: get<UserLocationInterface>(),
        mapInterface: get<MapInterface>(),
        apiInterface: get<ApiInterface>(),
        localStorageInterface: get<LocalStorageInterface>(),
      ));
  return get;
=======
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
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
}

class _$RegisterModule extends RegisterModule {}
