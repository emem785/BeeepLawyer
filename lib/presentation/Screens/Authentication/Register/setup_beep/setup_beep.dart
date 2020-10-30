import 'package:beep_lawyer_3/application/blocs/payment_bloc/payment_bloc.dart';
import 'package:beep_lawyer_3/application/blocs/user_bloc/user_bloc.dart';
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer_3/core/widgets/registration_widgets/plan_tiles.dart';
import 'package:beep_lawyer_3/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/enums.dart';

class SetupBeepPage extends StatelessWidget {
  const SetupBeepPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: SetupBeep(),
        create: (_) => getIt<PaymentBloc>()..add(InitializePayment()));
  }
}

class SetupBeep extends StatefulWidget {
  @override
  _SetupBeepState createState() => _SetupBeepState();
}

class _SetupBeepState extends State<SetupBeep> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  plan currentPlan;

  @override
  Widget build(BuildContext context) {
    // final userBloc = BlocProvider.of<UserBloc>(context);
    final paymentBloc = BlocProvider.of<PaymentBloc>(context);
    return Scaffold(
      key: globalKey,
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
          style: TextStyle(color: primaryColor, fontFamily: 'NUnito'),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: Padding(
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
                  PlanTiles(paymentBloc: paymentBloc),
                  BlocListener<PaymentBloc, PaymentState>(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: CommonButton(
                          text: 'Continue',
                          onPressed: () {
                            // Navigator.pushNamed(context, '/SetupBeepThree');
                            //TODO : Not working
                            paymentBloc.add(MakePayment(context));
                          },
                        ),
                      ),
                      listener: (context, state) {
                        state.maybeMap(
                            orElse: () => 1,
                            paymentFailed: (f) =>
                                globalKey.currentState.showSnackBar(SnackBar(
                                  content: Text(f.failure.message),
                                )),
                            paymentSucceeded: (s) => Navigator.pushNamed(
                                context, '/SetupBeepThree'));
                      })
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
