import 'package:beep_lawyer2/application/blocs/map_bloc/map_bloc.dart';
import 'package:beep_lawyer2/injectable.dart';
import 'package:beep_lawyer2/presentation/Screens/AppPages/home_screen.dart';
import 'package:beep_lawyer2/presentation/Screens/Authentication/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beep_lawyer2/application/blocs/auth_bloc/auth_bloc.dart';

class AuthController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (_, state) {
        return state.map(
            initial: (i) => Container(color: Colors.white),
            authenticated: (a) => BlocProvider(
                child: HomeScreen(), create: (_) => getIt<MapBloc>()),
            unauthenticated: (u) => SplashScreen());
      },
    );
  }
}
