import 'dart:async';
import 'dart:convert';

import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/api_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/buddy.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:beep_lawyer_3/infrastructure/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final LocalStorageInterface localStorageInterface;
  final ApiInterface apiInterface;

  UserBloc({@required this.localStorageInterface, @required this.apiInterface})
      : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield UserUpdating();
    yield* event.map(
      cacheScnNumber: (e) async* {
        await localStorageInterface.cacheScnNumber(e.scnNumber);
        yield UserUpdated("Scn Added");
      },
      insertUser: (e) async* {
        final user = await localStorageInterface.getUser();
        yield* user.fold((l) async* {
          UserError(l);
        }, (r) async* {
          yield UserLoaded(User.fromJson(jsonDecode(r)));
        });
      },
      updateUser: (e) async* {
        final response = await apiInterface.updateUser(e.user);
        yield* response.fold((l) async* {
          yield UserError(l);
        }, (r) async* {
          await localStorageInterface.cacheUser(jsonEncode(r));
          yield UserUpdated("Changes Saved");
        });
      },
      updatePassword: (e) async* {
        final response = await apiInterface.updatePassword(e.password);
        yield* response.fold((l) async* {
          yield UserError(l);
        }, (r) async* {
          yield UserUpdated("Password Updated");
        });
      },
    );
  }
}
