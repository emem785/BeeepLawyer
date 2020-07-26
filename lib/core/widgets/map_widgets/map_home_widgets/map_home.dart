import 'dart:async';

import 'package:beep_lawyer2/application/blocs/location_bloc/location_bloc.dart';
import 'package:beep_lawyer2/core/widgets/map_widgets/top_bar.dart';
import 'package:beep_lawyer2/core/widgets/menu_widgets/more_menu.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:beep_lawyer2/infrastructure/models/map_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:provider/provider.dart';
import '../../../../application/blocs/navigation_bloc/navigation_bloc.dart';
import '../../../../application/blocs/location_bloc/location_bloc.dart';
import 'beep_buttons.dart';
import 'map.dart';

class HomeMap extends StatefulWidget {
  @override
  _HomeMapState createState() => _HomeMapState();
}

class _HomeMapState extends State<HomeMap> {
  @override
  Widget build(BuildContext context) {
    final locationBloc = Provider.of<LocationBloc>(context);
    return Container(
      child: Stack(
        children: <Widget>[
          Container(child: BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) {
            return state.maybeMap(
                orElse: () => SizedBox(),
                mapRendered: (r) {
                  return Map(
                      mapTool: r.mapTool,
                      markerStream: r.mapTool.markerStreamController.stream);
                },
                broadcastStarted: (b) {
                  return Map(
                      mapTool: b.mapTool,
                      markerStream: b.mapTool.markerStreamController.stream);
                },
                broadcastStopped: (n) {
                  return Map(
                      mapTool: n.mapTool,
                      markerStream: n.mapTool.markerStreamController.stream);
                });
          })),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 150.0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: BlocBuilder<NavigationBloc, NavigationState>(
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => SizedBox(),
                        mapHome: (m) =>
                            BlocBuilder<LocationBloc, LocationState>(
                              builder: (context, state) => state.map(
                                  initial: (i) => SizedBox(),
                                  broadcastStarted: (b) =>
                                      StopBeep(locationBloc: locationBloc),
                                  broadcastStopped: (n) =>
                                      ResumeBeep(locationBloc: locationBloc),
                                  mapRendered: (r) =>
                                      StartBeep(locationBloc: locationBloc)),
                            ));
                  },
                ),
              ),
            ),
          ),
          BlocBuilder<LocationBloc, LocationState>(builder: (context, state) {
            return state.map(
                broadcastStarted: (b) => TopBar(address: b.mapTool.address),
                mapRendered: (r) => TopBar(address: r.mapTool.address),
                broadcastStopped: (n) => TopBar(address: n.mapTool.address),
                initial: (i) => SizedBox());
          }),
        ],
      ),
    );
  }
}
