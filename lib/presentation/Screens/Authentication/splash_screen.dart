import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: height),
              SvgPicture.asset('assets/images/logo.svg'),
              Padding(
                padding: EdgeInsets.only(top: 37.75),
                child: Text(
                  'Welcome To Beep',
                  style: TextStyle(fontSize: 32),
                ),
              ),

              Text(
                  'Send alerts when in trouble, easily \nfind a lawyer nearby.',
                  style: TextStyle(
                    fontSize: 14,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: CommonButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/RegisterOne'),
                    text: 'Join Beep'),
              ),
              CommonButton(
                  onPressed: () => Navigator.pushNamed(context, '/LoginOne'),
                  text: 'Login',
                  isGreen: true)
            ],
          ),
        ),
      ),
    );
  }
}
