import 'package:beep_lawyer2/application/blocs/user_bloc/user_bloc.dart';
import 'package:beep_lawyer2/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer2/core/widgets/registration_widgets/plan_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/enums.dart';

class SetupBeep extends StatefulWidget {
  @override
  _SetupBeepState createState() => _SetupBeepState();
}

class _SetupBeepState extends State<SetupBeep> {
  plan currentPlan;

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context)),
        titleSpacing: 0.1,
        title: Text(
          'Back',
          style: TextStyle(color: Colors.black, fontFamily: 'NUnito'),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Choose a Beeep plan',
                  style: TextStyle(fontSize: 20, fontFamily: 'Nunito'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text('This is to help cover operational costs.'),
                ),
                PlanTiles(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: CommonButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/SetupBeepTwo');
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
