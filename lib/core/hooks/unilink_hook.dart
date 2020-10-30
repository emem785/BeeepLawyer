import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uni_links/uni_links.dart';




void useUnilinkHook() {
   use(_UnilinkHook());
}

class _UnilinkHook extends Hook<Uri> {
  @override
  _UnilinkHookState createState() => _UnilinkHookState();
}

class _UnilinkHookState extends HookState<Uri, _UnilinkHook> {
  StreamSubscription<Uri> _subscription;
  Uri uri = Uri();
  Future<Null> initUniLinks() async {
    try {
      String initialLink = await getInitialLink();
      if (initialLink != null) {
        Navigator.pushNamed(context, '/ReceiveBeep');
      }
      _subscription = getUriLinksStream().listen((Uri uri) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/ReceiveBeep', ModalRoute.withName('/HomeScreen'));
      }, onError: (err) {
        _subscription.cancel();
        print(err.toString());
      });
    } on PlatformException {
      _subscription.cancel();
    }
  }

  @override
  void initHook() {
    // TODO: implement initHook
    super.initHook();
    initUniLinks();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _subscription.cancel();
  }

  @override
  Uri build(BuildContext context) => uri;
}
