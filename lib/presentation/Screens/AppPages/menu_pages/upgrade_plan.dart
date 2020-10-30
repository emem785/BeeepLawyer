import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/utils/enums.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:flutter/material.dart';

class UpgradePlan extends StatefulWidget {
  @override
  _UpgradePlanState createState() => _UpgradePlanState();
}

class _UpgradePlanState extends State<UpgradePlan> {
  plan opt;

  @override
  void initState() {
    super.initState();
    opt = plan.noPlan;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      opt = plan.basicPlan;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                            color: opt == plan.basicPlan
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
                            style:
                                TextStyle(fontFamily: 'Nunito', fontSize: 20),
                          ),
                          value: plan.basicPlan,
                          groupValue: opt,
                          activeColor: Colors.brown,
                          controlAffinity: ListTileControlAffinity.trailing,
                          onChanged: (plan value) {
                            setState(() {
                              opt = value;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                              '1 Beeep buddy\nAccess to pool of lawyers\n1 device'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text.rich(TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: '\n₦1000/',
                                style: TextStyle(fontSize: 16)),
                            TextSpan(
                                text: '3 months',
                                style: TextStyle(fontSize: 14))
                          ])),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        opt = plan.essentialPlan;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                              color: opt == plan.essentialPlan
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
                              style:
                                  TextStyle(fontFamily: 'Nunito', fontSize: 20),
                            ),
                            value: plan.essentialPlan,
                            groupValue: opt,
                            activeColor: Colors.brown,
                            controlAffinity: ListTileControlAffinity.trailing,
                            onChanged: (plan value) {
                              setState(() {
                                opt = value;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                                'Unlimited Beeep buddy\nAccess to pool of lawyers\n3 devices'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: '\n₦3000/',
                                  style: TextStyle(fontSize: 16)),
                              TextSpan(
                                  text: '1 year',
                                  style: TextStyle(fontSize: 14))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: CommonButton(
                    text: 'Upgrade Plan',
                    onPressed: () {
                      Navigator.pushNamed(context, 'CardPageOnePlan');
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
