part of 'navigation_bloc.dart';

@immutable
@freezed 
abstract class NavigationState with _$NavigationState{
  const factory NavigationState.mapHome() = MapHome;
  const factory NavigationState.menu() = Menu;
}
