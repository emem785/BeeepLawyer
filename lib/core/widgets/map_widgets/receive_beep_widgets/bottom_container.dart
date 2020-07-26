import 'package:beep_lawyer2/core/utils/StyleGuide.dart';
import 'package:beep_lawyer2/core/widgets/common_widgets/spinner.dart';
import 'package:beep_lawyer2/infrastructure/models/buddy.dart';
import 'package:flutter/material.dart';

class BottomContainerLoading extends StatelessWidget {
  final double height;
  const BottomContainerLoading({
    Key key,@required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.grey[100],
          height: height,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 21, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Waiting for details",
                  style: nunitoSmall,
                ),
                LoadingIndicator()
              ],
            ),
          )),
        );
  }
}

class BottomContainer extends StatelessWidget {
  final double height;
  final Buddy buddy;
  const BottomContainer({
    Key key,@required this.height,@required this.buddy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.grey[100],
          height:height,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 21, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Showing the live location of ${buddy.firstname} ${buddy.lastname}",
                  style: nunitoSmall,
                ),
                SizedBox(height: 24),
                Text("Get lawyers around location",
                    style: nunitoSmallGreen)
              ],
            ),
          )),
        );
  }
}