import 'dart:async';

import 'package:beep_lawyer_3/application/blocs/address_bloc/address_bloc.dart';
import 'package:beep_lawyer_3/application/blocs/location_bloc/location_bloc.dart';
import 'package:beep_lawyer_3/core/widgets/map_widgets/receive_beep_widgets/bottom_container.dart';
import 'package:beep_lawyer_3/core/widgets/map_widgets/top_bar.dart';
import 'package:beep_lawyer_3/core/widgets/menu_widgets/more_menu.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
import 'package:beep_lawyer_3/infrastructure/models/map_tools.dart';
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
    return LayoutBuilder(builder: (context, size) {
      double height = (size.maxHeight * 0.2);
      return Container(
        child: Stack(
          children: <Widget>[
            Container(
                child: BlocConsumer<LocationBloc, LocationState>(
              builder: (context, state) {
                return state.maybeMap(
                    orElse: () => SizedBox(),
                    mapRendered: (r) {
                      return Map(
                          mapTool: r.mapTool,
                          markerStream:
                              r.mapTool.markerStreamController.stream);
                    },
                    broadcastStarted: (b) {
                      return Map(
                          mapTool: b.mapTool,
                          markerStream:
                              b.mapTool.markerStreamController.stream);
                    },
                    broadcastStopped: (n) {
                      return Map(
                          mapTool: n.mapTool,
                          markerStream:
                              n.mapTool.markerStreamController.stream);
                    });
              },
              listener: (context, state) {
                return state.maybeMap(
                    orElse: () => 1,
                    mapRendered: (m) =>
                        context.bloc<AddressBloc>().add(GetAddress()));
              },
            )),
            BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) {
                return state.maybeMap(
                    orElse: () => SizedBox(),
                    broadcastStarted: (b) => Align(
                        child: BottomContainer(height: height),
                        alignment: Alignment.bottomCenter),
                    broadcastStopped: (s) => Align(
                        child: BottomContainerOffline(height: height),
                        alignment: Alignment.bottomCenter),
                    mapRendered: (m) => Align(
                        child: BottomContainerOffline(height: height),
                        alignment: Alignment.bottomCenter));
              },
            ),
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
    });
  }
}
