import 'package:beep_lawyer2/core/utils/enums.dart';
import 'package:beep_lawyer2/core/widgets/registration_widgets/plan_description.dart';
import 'package:flutter/material.dart';

class PlanTiles extends StatefulWidget {
  PlanTiles({Key key}) : super(key: key);

  @override
  _PlanTilesState createState() => _PlanTilesState();
}

class _PlanTilesState extends State<PlanTiles> {
  plan currentPlan;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              currentPlan = plan.basicPlan;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(
                    color: currentPlan == plan.basicPlan
                        ? Color.fromRGBO(153, 98, 77, 1)
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
                  activeColor: Colors.brown,
                  controlAffinity: ListTileControlAffinity.trailing,
                  onChanged: (plan value) {
                    setState(() {
                      currentPlan = value;
                    });
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
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                      color: currentPlan == plan.essentialPlan
                          ? Color.fromRGBO(153, 98, 77, 1)
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
                    activeColor: Colors.brown,
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (plan value) {
                      setState(() {
                        currentPlan = value;
                      });
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


