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
              '${isEssential ? 'Unlimited' : '1'} Beeep buddy\nAccess to pool of lawyers\n${isEssential ? '3' : '1'} devices'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text.rich(TextSpan(children: <TextSpan>[
            TextSpan(
                text: '\n₦${isEssential ? '3000' : '1000'}/',
                style: TextStyle(fontSize: 16)),
            TextSpan(
                text: '${isEssential ? '1 year' : '3 months'}',
                style: TextStyle(fontSize: 14))
          ])),
        ),
      ],
    );
  }
}