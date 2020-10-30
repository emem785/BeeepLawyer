import 'package:beep_lawyer_3/application/blocs/payment_bloc/payment_bloc.dart';
import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/utils/enums.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:beep_lawyer_3/core/widgets/registration_widgets/plan_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanTiles extends StatefulWidget {
  final PaymentBloc paymentBloc;
  PlanTiles({Key key, @required this.paymentBloc}) : super(key: key);

  @override
  _PlanTilesState createState() => _PlanTilesState();
}

class _PlanTilesState extends State<PlanTiles> {
  plan currentPlan;

  @override
  Widget build(BuildContext context) {
    final paymentBloc = BlocProvider.of<PaymentBloc>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              currentPlan = plan.basicPlan;
            });
            paymentBloc.add(SetPrice(150000));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(
                    color: currentPlan == plan.basicPlan
                        ? primaryColor
                        : Colors.transparent,
                    width: 2)),
            width: 312,
            height: 185,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RadioListTile<plan>(
                  title: const Text(
                    'Basic',
                    style: TextStyle(fontFamily: 'Nunito', fontSize: 20),
                  ),
                  value: plan.basicPlan,
                  groupValue: currentPlan,
                  activeColor: primaryColor,
                  controlAffinity: ListTileControlAffinity.trailing,
                  onChanged: (plan value) {
                    setState(() {
                      currentPlan = value;
                    });
                    paymentBloc.add(SetPrice(300000));
                  },
                ),
                PlanDescription(isEssential: false)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentPlan = plan.essentialPlan;
              });
              paymentBloc.add(SetPrice(300000));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                      color: currentPlan == plan.essentialPlan
                          ? primaryColor
                          : Colors.transparent,
                      width: 2)),
              width: 312,
              height: 185,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RadioListTile<plan>(
                    title: const Text(
                      'Essential',
                      style: TextStyle(fontFamily: 'Nunito', fontSize: 20),
                    ),
                    value: plan.essentialPlan,
                    groupValue: currentPlan,
                    activeColor: primaryColor,
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (plan value) {
                      setState(() {
                        currentPlan = value;
                      });
                      paymentBloc.add(SetPrice(300000));
                    },
                  ),
                  PlanDescription(isEssential: true),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
