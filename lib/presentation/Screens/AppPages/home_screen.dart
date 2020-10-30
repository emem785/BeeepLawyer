import 'dart:async';

<<<<<<< HEAD
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
=======
import 'package:beep_lawyer2/application/blocs/address_bloc/address_bloc.dart';
import 'package:beep_lawyer2/application/blocs/map_bloc/map_bloc.dart';
import 'package:beep_lawyer2/core/widgets/bottom_nav_bar_widgets/Bottom_Nav_bar.dart';
import 'package:beep_lawyer2/core/widgets/map_widgets/map_home_widgets/map_home.dart';
import 'package:beep_lawyer2/core/widgets/menu_widgets/more_menu.dart';
import 'package:beep_lawyer2/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import '../../../application/blocs/navigation_bloc/navigation_bloc.dart';
import '../../../application/blocs/location_bloc/location_bloc.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter/services.dart';

<<<<<<< HEAD
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

=======
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
<<<<<<< HEAD
=======
  StreamSubscription _subscription;
  @override
  void initState() {
    super.initState();
    initUniLinks();
  }

  Future<Null> initUniLinks() async {
    try {
      String initialLink = await getInitialLink();
      if (initialLink != null) {
        Navigator.pushNamed(context, '/ReceiveBeep');
      }
      _subscription = getUriLinksStream().listen((Uri uri) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/ReceiveBeep', ModalRoute.withName('/HomeScreen'));
      }, onError: (err) {
        _subscription.cancel();
        print(err.toString());
      });
    } on PlatformException {
      _subscription.cancel();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
<<<<<<< HEAD
        BlocProvider(create: (_) => getIt<AddressBloc>())
=======
        BlocProvider(create: (_) => getIt<LocationBloc>()..add(RenderMap())),
        BlocProvider(create: (_) => getIt<AddressBloc>()..add(GetAddress()))
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
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
