import 'dart:io';

import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/payment_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';

const PAY_STACK_PUBLIC_KEY = 'pk_test_1e940f03cf739240b2c5a044553bd871c669f773';

@Injectable(as: PaymentInterface)
class PaymentClientImpl implements PaymentInterface {
  @override
  Future<Either<Failure, String>> checkOut(
      Charge charge, BuildContext context) async {
    CheckoutMethod _method = CheckoutMethod.card;
    try {
      CheckoutResponse response = await PaystackPlugin.checkout(context,
          method: _method,
          charge: charge,
          fullscreen: false,
          logo: SvgPicture.asset('assets/images/logo.svg'));
      print('Response = $response');
      if (response.verify == true) {
        return Right(response.message);
      } else {
        return Left(ServerFailure("Transaction Unsuccessful"));
      }
    } catch (e) {
      print(e.toString());
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Charge createCharge(int chargeAmount, String email) {
    Charge charge = Charge()
      ..amount = chargeAmount
      ..email = email
      ..putCustomField("Charged From:", "Flutter Plugin")
      ..reference = getPaymentReference();

    return charge;
  }

  @override
  String getPaymentReference() {
    String platform;
    if (Platform.isIOS) {
      platform = 'iOS';
    } else {
      platform = 'Android';
    }

    return 'BEEP_Lawyer_ChargedFrom${platform}_${DateTime.now().millisecondsSinceEpoch}';
  }

  @override
  initializePlugin() {
    PaystackPlugin.initialize(publicKey: PAY_STACK_PUBLIC_KEY);
  }
}
