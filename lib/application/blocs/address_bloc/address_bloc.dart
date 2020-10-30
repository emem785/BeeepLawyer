import 'dart:async';

<<<<<<< HEAD
import 'package:beep_lawyer_3/domain/Interface/api_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/location_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
=======
import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

@injectable
class AddressBloc extends Bloc<AddressEvent, AddressState> {
<<<<<<< HEAD
  final UserLocationInterface userLocationInterface;
  final ApiInterface apiInterface;
  final LocalStorageInterface localStorageInterface;
  AddressBloc(
      {this.apiInterface,
      this.localStorageInterface,
      this.userLocationInterface})
      : super(AddressInitial());
=======
  final UserLocationInterface userLocation;
  AddressBloc({@required this.userLocation}) : super(AddressInitial());
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f

  @override
  Stream<AddressState> mapEventToState(
    AddressEvent event,
  ) async* {
    yield AddressLoading();
    yield* event.map(getAddress: (e) async* {
<<<<<<< HEAD
      final address = await userLocationInterface.getAddressFromLocation();
      yield* address.fold((l) async* {
        yield AddressFailure();
      }, (r) async* {
        yield AddressGotten(r);
      });
    }, getBuddyAddress: (e) async* {
      final location = await _getBuddyLocation();
      final address =
          await userLocationInterface.getBuddyAddressFromLocation(location);
=======
      final address = await userLocation.getAddressFromLocation();
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
      yield* address.fold((l) async* {
        yield AddressFailure();
      }, (r) async* {
        yield AddressGotten(r);
      });
    });
  }
<<<<<<< HEAD

    Future<Location> _getBuddyLocation() async {
    // final response = await localStorageInterface.getBuddy();
    // final buddy =
    //     response.fold((l) => null, (r) => Buddy.fromJson(jsonDecode(r)));
    // final location = await apiInterface.getLocation(buddy.phonenumber).first;
    return Location(latitude: 30, longitude: 103);
  }
=======
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
}
