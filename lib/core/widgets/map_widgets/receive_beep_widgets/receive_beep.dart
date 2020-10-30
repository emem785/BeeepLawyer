import 'dart:async';

import 'package:beep_lawyer_3/application/blocs/address_bloc/address_bloc.dart';
import 'package:beep_lawyer_3/application/blocs/auth_bloc/auth_bloc.dart';
import 'package:beep_lawyer_3/core/widgets/map_widgets/receive_beep_widgets/bottom_container.dart';
import 'package:beep_lawyer_3/core/widgets/map_widgets/top_bar.dart';
import 'package:beep_lawyer_3/application/blocs/map_bloc/map_bloc.dart';
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../map_home_widgets/map.dart';

const double ZOOM = 17;

class ReceiveBeep extends StatefulWidget {
  @override
  _ReceiveBeepState createState() => _ReceiveBeepState();
}

class _ReceiveBeepState extends State<ReceiveBeep> {
  Future<bool> _onWillPop(MapBloc mapBloc) async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?', style: nunitoMid),
            content: new Text('Do you want to stop receiving Broadcast',
                style: nunitoMid),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('NO', style: nunitoMidPromptPink),
              ),
              new FlatButton(
                onPressed: () {
                  mapBloc.add(StopSecondBroadcast());
                  Navigator.of(context).pop(true);
                },
                child: new Text('YES', style: nunitoMidPrompt),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final mapBloc = Provider.of<MapBloc>(context);
    return WillPopScope(
      onWillPop: () => _onWillPop(mapBloc),
      child: LayoutBuilder(builder: (context, size) {
        return Container(
          child: Stack(
            children: <Widget>[
              Container(child:
                  BlocBuilder<MapBloc, MapState>(builder: (context, state) {
                return state.maybeMap(
                  orElse: () => SizedBox(),
                  mapRendered: (r) => Map(
                      mapTool: r.mapTool,
                      markerStream: r.mapTool.markerStreamController.stream),
                  broadcastStarted: (b) => Map(
                      mapTool: b.mapTool,
                      markerStream: b.mapTool.markerStreamController.stream),
                );
              })),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child:
              //       BlocBuilder<MapBloc, MapState>(builder: (context, state) {
              //     return state.maybeMap(
              //         orElse: () => SizedBox(),
              //         mapRendered: (r) => BottomContainer(
              //             height: size.maxHeight * 0.2, buddy: r.buddy),
              //         broadcastStarted: (b) => BottomContainer(
              //             height: size.maxHeight * 0.2, buddy: b.buddy),
              //         loading: (l) =>
              //             BottomContainerLoading(height: size.maxHeight * 0.2));
              //   }),
              // ),
                           BlocBuilder<AddressBloc, AddressState>(builder: (context, state) {
                return state.map(
                    addressInitial: (i) => TopBar(address: ""),
                    addressLoading: (l) =>
                        TopBar(address: "Getting Address ...."),
                    addressFailure: (f) =>
                        TopBar(address: "Failed to get address"),
                    addressGotten: (g) => TopBar(address: g.address));
              }),
            ],
          ),
        );
      }),
    );
  }
}
