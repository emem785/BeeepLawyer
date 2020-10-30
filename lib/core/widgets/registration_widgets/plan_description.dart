import 'package:flutter/material.dart';

class PlanDescription extends StatelessWidget {
  final bool isEssential;
  const PlanDescription({
    Key key,
    @required this.isEssential,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
              'Access to pool of citizens\n${isEssential ? '3' : '1'} devices'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text.rich(TextSpan(children: <TextSpan>[
            TextSpan(
                text: '\n₦${isEssential ? '2500' : '1000'}/',
                style: TextStyle(fontSize: 16)),
            TextSpan(
                text: '${isEssential ? '1 year' : '6 months'}',
                style: TextStyle(fontSize: 14))
          ])),
        ),
      ],
    );
  }
}