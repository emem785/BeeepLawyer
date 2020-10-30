import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal, children: <Widget>[
      Expanded(child: SvgPicture.asset('assets/images/Success.svg'))
    ]);
  }
}
