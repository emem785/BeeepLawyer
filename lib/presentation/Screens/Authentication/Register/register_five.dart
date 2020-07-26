import 'package:beep_lawyer2/core/utils/StyleGuide.dart';
import 'package:beep_lawyer2/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer2/core/widgets/common_widgets/succes_widget.dart';
import 'package:beep_lawyer2/presentation/Screens/AppPages/home_screen.dart';

import 'package:flutter/material.dart';

class RegisterFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 216, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SuccessWidget(),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 34.0),
                  child: Text('Great!',
                      style: TextStyle(fontFamily: 'Nunito', fontSize: 24)),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Thank You for trusting us',
                    style: successSub,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CommonButton(
                    onPressed: () => Navigator.pushNamed(context, '/SetupBeep'),
                    text: 'Setup Beeep'),
              )
            ],
          ),
        ),
      ),
    );
  }
}