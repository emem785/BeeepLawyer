import 'package:beep_lawyer_3/application/blocs/address_bloc/address_bloc.dart';
import 'package:beep_lawyer_3/application/blocs/map_bloc/map_bloc.dart';
import 'package:beep_lawyer_3/core/widgets/map_widgets/receive_beep_widgets/receive_beep.dart';
import 'package:beep_lawyer_3/infrastructure/models/buddy.dart';
import 'package:beep_lawyer_3/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReceiveBeepPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final Buddy buddy;

  ReceiveBeepPage({@required this.buddy});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return Scaffold(
        key: _globalKey,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (_) => getIt<MapBloc>()..add(RenderBuddyMap(buddy))),
            BlocProvider(
                create: (_) => getIt<AddressBloc>()..add(GetBuddyAddress())),
          ],
          child: ReceiveBeep(),
        ),
      );
    });
  }
}
