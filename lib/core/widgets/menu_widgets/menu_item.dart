import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  final SvgPicture icon;
  final String mainText;
  final String subText;

  const MenuItem({Key key, this.icon, this.mainText, this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(child: icon, width: 32),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(mainText,
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      Text(subText,
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.keyboard_arrow_right)),
              )
            ],
          ),
        );
      }
    );
  }
}
