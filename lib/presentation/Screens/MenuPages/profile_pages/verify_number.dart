import 'dart:async';
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:flutter/material.dart';

class VerifyNumber extends StatefulWidget {
  final String phoneNumber;

  const VerifyNumber({Key key, this.phoneNumber}) : super(key: key);
  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  TextEditingController _smsCode;
  Timer _timer;
  int _count = 60;
  bool isCounting = false;

  @override
  void initState() {
    super.initState();
    _smsCode = TextEditingController(text: "");
  }

  @override
  void dispose() {
    super.dispose();
    _smsCode.dispose();
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
                Text('Phone number verification',
                    style: TextStyle(fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 24),
                  child: Text(
                      'A text message containing a 4-digit\ncode have been sent to ${widget.phoneNumber}',
                      style: TextStyle(fontSize: 14)),
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
                              child: Text(
                                '4-digit code',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'Nunito'),
                              ),
                            ),
                            TextFormField(
                              controller: _smsCode,
                              validator: (value) => (value.isEmpty)
                                  ? "Please enter 4-digit code"
                                  : null,
                              keyboardType: TextInputType.number,
                              maxLength: 4,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(gapPadding: 0.1),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 6),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: isCounting ? timer() : () {},
                                  child: Text(
                                    'Didn’t get the code?',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 14,
                                        color: isCounting
                                            ? Colors.grey
                                            : Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text('$_count'),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Text(
                            'Change number',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14,
                                color: Colors.brown,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: CommonButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, '/RegisterThree'),
                              text: 'Verify Number'),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }

  timer() {
    if (isCounting == false) {
      const oneSec = const Duration(seconds: 1);
      _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(
          () {
            isCounting = true;
            if (_count < 1) {
              timer.cancel();
              setState(() {
                isCounting = false;
              });
            } else {
              _count = _count - 1;
            }
          },
        ),
      );
    }
  }
}
