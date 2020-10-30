import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/spinner.dart';
import 'package:beep_lawyer_3/infrastructure/models/buddy.dart';
import 'package:flutter/material.dart';



class BottomContainer extends StatelessWidget {
  final double height;
  const BottomContainer({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: height,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "You are currently online, tap the button to go offline.",
              style:nunitoBottomContainer, 
            ),
          ],
        ),
      )),
    );
  }
}

class BottomContainerOffline extends StatelessWidget {
  final double height;
  const BottomContainerOffline({Key key,@required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: height,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "You are currently offline, tap the button to go online.",
              style: nunitoBottomContainer,
            ),
          ],
        ),
      )),
    );
  }
}
