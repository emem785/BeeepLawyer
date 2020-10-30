import 'dart:async';

import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/unilink_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_links/uni_links.dart';

class UnilinkImpl implements UnilinkInterface {
  @override
  Future<void> initUnilink(BuildContext context, StreamSubscription<Uri> subscription) async {
    try {
      String initialLink = await getInitialLink();
      if (initialLink != null) {
        Navigator.pushNamed(context, '/ReceiveBeep');
      }
      subscription = getUriLinksStream().listen((Uri uri) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/ReceiveBeep', ModalRoute.withName('/HomeScreen'));
      }, onError: (err) {
        subscription.cancel();
        print(err.toString());
      });
    } on PlatformException {
      subscription.cancel();
    }
  }

  // @override
  // Either<StreamSubscription<Uri>, Failure> initUnilinkStream(BuildContext context) {
  //   try{
  //     final subscription = getUnilinkStream(context);
  //     return Left(subscription);
  //   }on PlatformException{
  //     Right()
  //   }

  // }

  // @override
  // StreamSubscription<Uri> getUnilinkStream(BuildContext context) {
  //   final _subscription = getUriLinksStream().listen((Uri uri) {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, '/ReceiveBeep', ModalRoute.withName('/HomeScreen'));
  //   });

  //   return _subscription;
  // }
}
