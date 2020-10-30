

<<<<<<< HEAD
import 'package:beep_lawyer_3/injectable.config.dart';
=======
import 'package:beep_lawyer2/injectable.config.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env){
  $initGetIt(getIt,environment: env);
}