import 'dart:async';

import 'package:beep_lawyer_3/application/blocs/address_bloc/address_bloc.dart';
import 'package:beep_lawyer_3/application/blocs/map_bloc/map_bloc.dart';
import 'package:beep_lawyer_3/core/hooks/firbase_messaging_hook.dart';
import 'package:beep_lawyer_3/core/hooks/unilink_hook.dart';
import 'package:beep_lawyer_3/core/widgets/bottom_nav_bar_widgets/Bottom_Nav_bar.dart';
import 'package:beep_lawyer_3/core/widgets/map_widgets/map_home_widgets/map_home.dart';
import 'package:beep_lawyer_3/core/widgets/menu_widgets/more_menu.dart';
import 'package:beep_lawyer_3/infrastructure/repositories/unilink_impl.dart';
import 'package:beep_lawyer_3/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../application/blocs/navigation_bloc/navigation_bloc.dart';
import '../../../application/blocs/location_bloc/location_bloc.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter/services.dart';

class HomeInitializer extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // useUnilinkHook();
    final firebase = useFirebaseMessagingHook();
    return BlocProvider(
        create: (_) => getIt<LocationBloc>()..add(RenderMap(firebase)),
        child: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AddressBloc>())
      ],
      child: Scaffold(
        key: _globalKey,
        bottomNavigationBar: BottomBar(
          activeIndex: navIndex,
          onPressed: (i) => setState(() => navIndex = i),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              HomeMap(),
              BlocBuilder<NavigationBloc, NavigationState>(
                builder: (_, state) {
                  return state.map(
                      mapHome: (h) => SizedBox(), menu: (m) => MoreMenu());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
