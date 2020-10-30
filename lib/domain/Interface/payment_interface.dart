<<<<<<< HEAD
import 'package:beep_lawyer_3/core/error/failure.dart';
=======
import 'package:beep_lawyer2/core/error/failure.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';

abstract class PaymentInterface {
  initializePlugin();
  String getPaymentReference();
  Charge createCharge(int chargeAmount, String email);
  Future<Either<Failure, String>> checkOut(Charge charge, BuildContext context);
}
