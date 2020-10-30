import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/custom_text_form_field.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/spinner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../application/blocs/user_bloc/user_bloc.dart';

class ForgotPasswordFour extends StatefulWidget {
  @override
  _ForgotPasswordFourState createState() => _ForgotPasswordFourState();
}

class _ForgotPasswordFourState extends State<ForgotPasswordFour> {
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _password = TextEditingController(text: "");
  }

  @override
  void dispose() {
    super.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
              Text('Reset your password', style: TextStyle(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 24),
                child: Text(
                    'Please choose a new password to gain access to your Beeep acount.',
                    style: TextStyle(fontSize: 14)),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomTextFieldPassword(controller: _password, header: 'Password'),
                      BlocConsumer<UserBloc, UserState>(
                        listener: (_, state) {
                          return state.maybeMap(
                              orElse: () => 1,
                              userError: (e) => _key.currentState.showSnackBar(
                                  SnackBar(content: Text(e.failure.message))),
                              userUpdated: (u) => Navigator.pushNamed(
                                  context, '/ForgotPassword5'));
                        },
                        builder: (_, state) {
                          return state.maybeMap(
                              orElse: () => SizedBox(),
                              userUpdating: (u) => LoadingIndicator());
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: CommonButton(
                            onPressed: () {
                              // if (_formKey.currentState.validate()) {
                              //   userBloc.add(UpdatePassword(_password.text));
                              // }
                              //TODO
                              Navigator.pushNamed(
                                  context, '/ForgotPassword5');
                            },
                            text: 'Reset'),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
