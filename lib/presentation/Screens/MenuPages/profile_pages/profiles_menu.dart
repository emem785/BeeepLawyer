import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/spinner.dart';
import 'package:beep_lawyer_3/infrastructure/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beep_lawyer_3/application/blocs/user_bloc/user_bloc.dart';
import '../../../../application/blocs/navigation_bloc/navigation_bloc.dart';

class ProfileMenu extends StatefulWidget {
  final User user;

  const ProfileMenu({Key key, @required this.user}) : super(key: key);
  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  TextEditingController _firstname;
  TextEditingController _lastname;
  TextEditingController _phonenumber;
  TextEditingController _twitterhandle;
  TextEditingController _email;

  @override
  void initState() {
    super.initState();
    _firstname = TextEditingController(text: widget.user.firstname);
    _lastname = TextEditingController(text: widget.user.lastname);
    _phonenumber = TextEditingController(text: widget.user.phone);
    _email = TextEditingController(text: widget.user.email);
  }

  @override
  void dispose() {
    super.dispose();
    _firstname.dispose();
    _lastname.dispose();
    _phonenumber.dispose();
    _email.dispose();
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
            onPressed: () {
              Navigator.pop(context);
              context.bloc<NavigationBloc>().add(ChangeNavState(1));

            }),
        titleSpacing: 0.1,
        title: Text(
          'Profile',
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
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CusTextFine(
                            controller: _firstname, labelText: 'First Name'),
                        CusTextFine(
                            controller: _lastname, labelText: 'Last Name'),
                        // CusTextFine(
                        //     controller: _phonenumber,
                        //     num: true,
                        //     labelText: 'Phone Number'),
                        CusTextFine(controller: _email, labelText: 'Email'),
                      ],
                    ),
                    BlocConsumer<UserBloc, UserState>(
                      listener: (_, state) {
                        return state.maybeMap(
                            orElse: () => 1,
                            userError: (e) => _key.currentState.showSnackBar(
                                SnackBar(content: Text(e.failure.message))),
                            userUpdated: (u) => _key.currentState
                                .showSnackBar(SnackBar(content: Text(u.msg))));
                      },
                      builder: (_, state) {
                        return state.maybeMap(
                            orElse: () => SizedBox(),
                            userUpdating: (u) => LoadingIndicator());
                      },
                    ),
                    CommonButton(
                        text: 'Save Changes',
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            userBloc.add(UpdateUser(User(
                                firstname: _firstname.text,
                                lastname: _lastname.text,
                                // phone: _phonenumber.text,
                                email: _email.text)));
                          }
                        }),
                    CommonButton(
                        onPressed: () => Navigator.pushNamed(
                            context, 'ChangePasswordOne',
                            arguments: {"phone": _phonenumber.text}),
                        text: 'Change Password',
                        isGreen: true),
                    SizedBox(height: 16)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CusTextFine extends StatelessWidget {
  final TextEditingController controller;
  final bool num;
  final String labelText;

  const CusTextFine(
      {Key key, this.controller, this.num = false, this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: customGrey),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 8, 0, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Align(
                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.7),
                        Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              color: Colors.green[900]),
                        ),
                      ],
                    ),
                    alignment: Alignment.topRight,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: labelText,
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Nunito'),
                      border: InputBorder.none,
                    ),
                    controller: controller,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    cursorColor: Colors.green[700],
                    keyboardType:
                        num ? TextInputType.number : TextInputType.text,
                    validator: (value) =>
                        (value.isEmpty) ? 'Enter a valid $labelText' : null,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
