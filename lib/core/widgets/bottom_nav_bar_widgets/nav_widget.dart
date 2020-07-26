import 'package:flutter/material.dart';

class NavWidget extends StatelessWidget {
  final String itemText;
  final bool isSelected;

  const NavWidget({Key key, this.itemText, this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(          
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: isSelected ? Colors.brown : Colors.transparent))),
          child: Center(
            child: Text(
              itemText,
              style: TextStyle(
                  fontSize: isSelected ? 17 : 16,
                  color: isSelected ? Colors.brown : Colors.black,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600),
            ),
          ),
        );
    
  }
}