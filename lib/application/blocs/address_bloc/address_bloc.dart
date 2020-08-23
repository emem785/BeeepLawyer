import 'dart:async';

import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

@injectable
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final UserLocationInterface userLocation;
  AddressBloc({@required this.userLocation}) : super(AddressInitial());

  @override
  Stream<AddressState> mapEventToState(
    AddressEvent event,
  ) async* {
    yield AddressLoading();
    yield* event.map(getAddress: (e) async* {
      final address = await userLocation.getAddressFromLocation();
      yield* address.fold((l) async* {
        yield AddressFailure();
      }, (r) async* {
        yield AddressGotten(r);
      });
    });
  }
}
