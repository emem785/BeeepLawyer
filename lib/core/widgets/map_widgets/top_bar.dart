<<<<<<< HEAD
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
=======
import 'package:beep_lawyer2/core/utils/StyleGuide.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String address;
  const TopBar({
    Key key,
    @required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
<<<<<<< HEAD
          width: MediaQuery.of(context).size.width * 0.95,
=======
          width: 385,
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Current Location',
                          style: TextStyle(fontSize: 15, fontFamily: 'Nunito')),
                      Text(
                        address,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.my_location,
                      color: primaryColor,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.black26, width: 0.5),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
