import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/core/utils/enums.dart';
import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:provider/provider.dart';

class SetupBeepTwo extends StatefulWidget {
  final plan opt;
  const SetupBeepTwo({Key key, this.opt}) : super(key: key);

  @override
  _SetupBeepTwoState createState() => _SetupBeepTwoState();
}

class _SetupBeepTwoState extends State<SetupBeepTwo> {
  TextEditingController _expDate = MaskedTextController(mask: "00/00");
  TextEditingController _cardNumber = TextEditingController(text: "");
  TextEditingController _cvv = TextEditingController(text: "");
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _cardNumber.dispose();
    _expDate.dispose();
    _cvv.dispose();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Card details', style: nunitoLarge),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                      'You have selected the basic plan for ${widget.opt == plan.basicPlan ? '#1000' : '#3500'}, recurring once in 1 year.'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
                      child: Text(
                        'Card Number',
                        style: TextStyle(fontSize: 14, fontFamily: 'Nunito'),
                      ),
                    ),
                    TextFormField(
                      controller: _cardNumber,
                      keyboardType: TextInputType.number,
                      validator: (value) => (value.length < 16)
                          ? "Please enter valid Card Number\n(card number cannot be less than 16 digits)"
                          : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(gapPadding: 0.1),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 2.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
                            child: Text(
                              'Valid thru',
                              style:
                                  TextStyle(fontSize: 14, fontFamily: 'Nunito'),
                            ),
                          ),
                          TextFormField(
                            controller: _expDate,
                            validator: (value) => (value.length < 2)
                                ? "Please enter \nvalid expiry date "
                                : null,
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(gapPadding: 0.1),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: 172,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
                              child: Text(
                                'CVV',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'Nunito'),
                              ),
                            ),
                            TextFormField(
                              controller: _cvv,
                              validator: (value) => (value.isEmpty)
                                  ? "Please enter a\nvalid cvv number"
                                  : null,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(gapPadding: 0.1),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 6),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: CommonButton(
                        text:
                            'Pay ${widget.opt == plan.basicPlan ? '#1000' : '#3500'}',
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.pushNamed(context, '/SetupBeepThree');
                          }
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
