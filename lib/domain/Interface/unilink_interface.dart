import 'dart:async';

import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

abstract class UnilinkInterface {
  Future<void> initUnilink(BuildContext context, StreamSubscription<Uri> subscription);
  // Either<StreamSubscription<Uri>, Failure> initUnilinkStream(
  //     BuildContext context);
  // StreamSubscription<Uri> getUnilinkStream(BuildContext context);
}
