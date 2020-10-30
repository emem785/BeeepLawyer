
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool isGreen;

  const CommonButton({Key key, this.onPressed, this.text, this.isGreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       
        Padding(
          padding: EdgeInsets.only(top: 24),
          child: RaisedButton(
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: isGreen ? primaryColor : Colors.brown)),
            color: isGreen ? Colors.transparent: Colors.brown,
            elevation: 0.0,
            child: Text(
              text,
              style: TextStyle(color: isGreen ? primaryColor : Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}