import 'package:beep_lawyer2/application/blocs/payment_bloc/payment_bloc.dart';
import 'package:beep_lawyer2/core/utils/StyleGuide.dart';
import 'package:beep_lawyer2/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer2/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PayStackPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => getIt<PaymentBloc>(), child: PayStackPayment());
  }
}

class PayStackPayment extends StatefulWidget {
  PayStackPayment({Key key}) : super(key: key);

  @override
  _PayStackPaymentState createState() => _PayStackPaymentState();
}

class _PayStackPaymentState extends State<PayStackPayment> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final paymentBloc = BlocProvider.of<PaymentBloc>(context);
    return Scaffold(
      key: globalKey,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 216, 24, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 34.0),
                  child: Text('Make A Payment',
                      style: TextStyle(fontFamily: 'Nunito', fontSize: 24)),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    '',
                    style: successSub,
                  ),
                ),
              ),
              BlocListener<PaymentBloc, PaymentState>(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CommonButton(
                        onPressed: () =>
                            paymentBloc.add(MakePayment(1000, context)),
                        text: 'Go Home'),
                  ),
                  listener: (context, state) {
                    state.maybeMap(
                        orElse: () => 1,
                        paymentFailed: (f) =>
                            globalKey.currentState.showSnackBar(SnackBar(
                              content: Text(f.failure.message),
                            )),
                        paymentSucceeded: (s) =>
                            Navigator.pushNamed(context, '/SetupBeepThree'));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}