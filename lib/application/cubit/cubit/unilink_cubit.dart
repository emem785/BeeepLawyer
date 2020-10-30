import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unilink_state.dart';
part 'unilink_cubit.freezed.dart';

class UnilinkCubit extends Cubit<UnilinkState> {
  UnilinkCubit() : super(UnilinkInitial());
}
