part of 'navigation_bloc.dart';

@immutable
@freezed 
abstract class NavigationEvent with _$NavigationEvent{
  const factory NavigationEvent.changeNavState(int i) = ChangeNavState;
  
}