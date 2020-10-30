import 'dart:async';
import 'package:beep_lawyer_3/application/blocs/user_bloc/user_bloc.dart';
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/spinner.dart';
import 'package:flutter/material.dart';
import 'package:beep_lawyer_3/application/blocs/register_bloc/register_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFour extends StatefulWidget {
  @override
  _RegisterFourState createState() => _RegisterFourState();
}

class _RegisterFourState extends State<RegisterFour> {
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  TextEditingController _scnNumber = TextEditingController(text: "");

  @override
  void dispose() {
    super.dispose();
    _scnNumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context);
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
                Text('Please fill in your SCN to continue',
                    style: TextStyle(fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 24),
                  child: Text(
                      'This is to enable us verify that you are a lawyer.',
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
                                'SCN Number',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'Nunito'),
                              ),
                            ),
                            TextFormField(
                              controller: _scnNumber,
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
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: BlocListener<UserBloc, UserState>(
                            listener: (_, state) {
                              state.maybeMap(
                                  orElse: () => 1,
                                  userUpdated: (u) => Navigator.pushNamed(
                                      context, '/RegisterFive'));
                            },
                            child: CommonButton(
                              onPressed: () {
                                // if (_formKey.currentState.validate()) {
                                //   userBloc.add(CacheScnNumber(_scnNumber.text));
                                // }
                                //TODO
                                Navigator.pushNamed(context, '/RegisterFive');
                              },
                              text: "Verify Number",
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
