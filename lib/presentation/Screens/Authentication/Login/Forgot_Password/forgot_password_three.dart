import 'package:beep_lawyer2/core/utils/StyleGuide.dart';
import 'package:beep_lawyer2/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer2/core/widgets/common_widgets/succes_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 232, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SuccessWidget(),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 34.0),
                  child: Text(
                    'Success!',
                    style: TextStyle(fontFamily: 'Nunito', fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Phone number verified\ngo ahead to reset password',
                    style: successSub,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CommonButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/ForgotPassword4'),
                    text: 'Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
