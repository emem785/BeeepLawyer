// import 'package:beep_lawyer_3/application/blocs/payment_bloc/payment_bloc.dart';
// import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
// import 'package:beep_lawyer_3/core/widgets/common_widgets/common_button.dart';
// import 'package:beep_lawyer_3/injectable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_paystack/flutter_paystack.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class PayStackPaymentPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (_) => getIt<PaymentBloc>(), child: PayStackPayment());
//   }
// }

// class PayStackPayment extends StatefulWidget {
//   PayStackPayment({Key key}) : super(key: key);

//   @override
//   _PayStackPaymentState createState() => _PayStackPaymentState();
// }

// class _PayStackPaymentState extends State<PayStackPayment> {
//   GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     final paymentBloc = BlocProvider.of<PaymentBloc>(context);
//     return Scaffold(
//       key: globalKey,
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(24, 216, 24, 0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.center,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 34.0),
//                   child: Text('Make A Payment',
//                       style: TextStyle(fontFamily: 'Nunito', fontSize: 24)),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 16.0),
//                   child: Text(
//                     '',
//                     style: successSub,
//                   ),
//                 ),
//               ),
//               CommonButton(
//                   onPressed: () {
//                     PaystackPlugin.initialize(
//                         publicKey:
//                             'pk_test_1e940f03cf739240b2c5a044553bd871c669f773');
//                   },
//                   text: "initialize"),
//               BlocListener<PaymentBloc, PaymentState>(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 8.0),
//                     child: CommonButton(
//                         onPressed: () async {
//                           // paymentBloc.add(MakePayment(context));
//                           Charge charge = Charge()
//                             ..amount = 100000
//                             ..email = "email@email.com"
//                             ..putCustomField("Charged From:", "Flutter Plugin")
//                             ..reference = "dfdfdf";

//                           CheckoutResponse response =
//                               await PaystackPlugin.checkout(
//                                   context,
//                                   method: CheckoutMethod.card,
//                                   charge: charge,
//                                   fullscreen: false,
//                                   logo: SvgPicture.asset(
//                                       'assets/images/logo.svg'));
//                           print(response.toString());
//                         },
//                         text: 'Go Home'),
//                   ),
//                   listener: (context, state) {
//                     // state.maybeMap(
//                     //     orElse: () => 1,
//                     //     paymentFailed: (f) =>
//                     //         globalKey.currentState.showSnackBar(SnackBar(
//                     //           content: Text(f.failure.message),
//                     //         )),
//                     //     paymentSucceeded: (s) =>
//                     //         Navigator.pushNamed(context, '/SetupBeepThree'));
//                   }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
