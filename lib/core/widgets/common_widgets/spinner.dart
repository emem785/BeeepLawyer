import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 0, vertical: 8),
          child: Center(
              child: SpinKitWave(
                  color: Colors.green, size: 30)),
        ));
  }
}