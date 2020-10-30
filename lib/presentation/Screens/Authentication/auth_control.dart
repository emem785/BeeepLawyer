<<<<<<< HEAD
import 'package:beep_lawyer_3/application/blocs/map_bloc/map_bloc.dart';
import 'package:beep_lawyer_3/injectable.dart';
import 'package:beep_lawyer_3/presentation/Screens/AppPages/home_screen.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beep_lawyer_3/application/blocs/auth_bloc/auth_bloc.dart';
=======
import 'package:beep_lawyer2/application/blocs/map_bloc/map_bloc.dart';
import 'package:beep_lawyer2/injectable.dart';
import 'package:beep_lawyer2/presentation/Screens/AppPages/home_screen.dart';
import 'package:beep_lawyer2/presentation/Screens/Authentication/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beep_lawyer2/application/blocs/auth_bloc/auth_bloc.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f

class AuthController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (_, state) {
        return state.map(
            initial: (i) => Container(color: Colors.white),
            authenticated: (a) => BlocProvider(
<<<<<<< HEAD
                child: HomeInitializer(), create: (_) => getIt<MapBloc>()),
=======
                child: HomeScreen(), create: (_) => getIt<MapBloc>()),
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
            unauthenticated: (u) => SplashScreen());
      },
    );
  }
}
