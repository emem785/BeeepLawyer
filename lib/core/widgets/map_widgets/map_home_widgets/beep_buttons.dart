import 'package:beep_lawyer_3/application/blocs/location_bloc/location_bloc.dart';
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:flutter/material.dart';

class StopBeep extends StatelessWidget {
  const StopBeep({
    Key key,
    @required this.locationBloc,
  }) : super(key: key);

  final LocationBloc locationBloc;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        locationBloc.add(StopOnCallSession());
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: beepButtonPink,
      child: Text('Go Offline',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
    );
  }
}

class ResumeBeep extends StatelessWidget {
  const ResumeBeep({
    Key key,
    @required this.locationBloc,
  }) : super(key: key);

  final LocationBloc locationBloc;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        locationBloc.add(ResumeOnCallSession());
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.brown,
      child: Text('Go Online',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
    );
  }
}

class StartBeep extends StatelessWidget {
  const StartBeep({
    Key key,
    @required this.locationBloc,
  }) : super(key: key);

  final LocationBloc locationBloc;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        locationBloc.add(StartOnCallSession());
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.brown,
      child: Text('Go Online',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
    );
  }
}