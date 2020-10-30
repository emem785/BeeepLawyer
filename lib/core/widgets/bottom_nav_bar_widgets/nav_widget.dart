<<<<<<< HEAD
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
=======
import 'package:beep_lawyer2/core/utils/StyleGuide.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:flutter/material.dart';

class NavWidget extends StatelessWidget {
  final String itemText;
  final bool isSelected;

  const NavWidget({Key key, this.itemText, this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: isSelected ? primaryColor : Colors.transparent))),
      child: Center(
        child: Text(
          itemText,
          style: TextStyle(
              fontSize: isSelected ? 17 : 16,
              color: isSelected ? primaryColor : Colors.black,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
