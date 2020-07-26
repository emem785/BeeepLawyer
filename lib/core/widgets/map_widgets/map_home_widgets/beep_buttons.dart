import 'package:beep_lawyer2/application/blocs/location_bloc/location_bloc.dart';
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
        locationBloc.add(StopBroadcast());
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.red,
      child: Text('STOP BEEEP',
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
        locationBloc.add(ResumeBroadcast());
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.green,
      child: Text('SEND BEEEP',
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
        locationBloc.add(BroadcastLocation());
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.green,
      child: Text('SEND BEEEP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
    );
  }
}