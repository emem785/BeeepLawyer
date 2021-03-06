import 'dart:async';

<<<<<<< HEAD
import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/api_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
=======
import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
<<<<<<< HEAD
import 'package:beep_lawyer_3/infrastructure/models/user.dart';
=======
import 'package:beep_lawyer2/infrastructure/models/user.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final ApiInterface apiInterface;
  final LocalStorageInterface localStorageInterface;
  RegisterBloc({this.localStorageInterface, this.apiInterface}) : super(RegisterUserInitial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield RegisterLoading();
    yield* event.map(register: (e) async* {
      final response = await apiInterface.registerUser(user: e.user,password: e.password);
      yield* response.fold((l) async* {
        yield RegisterError(l);
      }, (r) async* {
        yield RegisterComplete(e.user.phone);
      });
    }, getCode: (e) async* {
      final response = await apiInterface.getVerifyCode(e.phoneNumber);
      yield* response.fold((l) async* {
        yield RegisterError(l);
      }, (r) async* {
        yield GetCodeComplete(r.toString());
      });
    }, mobileVerify: (e) async* {
      final response = await apiInterface.mobileVerify(e.phoneNumber, e.code);
      yield* response.fold((l) async* {
        yield RegisterError(l);
      }, (r) async* {
        final user = await localStorageInterface.cacheUserFromSignIn(r, e.phoneNumber);
        yield VerifyComplete(user);
      });
    });
  }
}
