import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  TextEditingController _phoneNumber;

  @override
  void initState() {
    super.initState();
    _phoneNumber = TextEditingController(text: "");
  }

  @override
  void dispose() {
    super.dispose();
    _phoneNumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: primaryColor,
            ),
            onPressed: () => Navigator.pop(context)),
        titleSpacing: 0.1,
        title: Text(
          'Back',
          style: TextStyle(color: primaryColor),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Verify number to Reset Password',
                  style: TextStyle(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 24),
                child: Text(
                    'Please put in the phone number you\nused to setup Beeep account.',
                    style: TextStyle(fontSize: 14)),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomTextFieldNum(
                          controller: _phoneNumber, title: 'Phone Number'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: CommonButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.pushNamed(
                                    context, '/ForgotPassword2',arguments: {"phone": _phoneNumber.text});
                              }
                            },
                            text: 'Request Code'),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
