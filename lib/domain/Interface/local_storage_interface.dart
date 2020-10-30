<<<<<<< HEAD
import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/infrastructure/models/user.dart';
=======
import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/infrastructure/models/user.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:dartz/dartz.dart';



abstract class LocalStorageInterface{
  Future cacheUser(String data);
  Future<Either<Failure,String>> getUser();
  Future removeUser();
  Future cacheToken(String data);
  Future<Either<Failure,String>> getToken();
  Future removeToken();
  Future cacheOncall(bool onCall);
  Future<Either<Failure,bool>> getOnCall();
  Future removeOnCall();
  Future<User> cacheUserFromSignIn(Map<String,dynamic> map,String phoneNumber);
  Future<User> cacheUserFromRegister(Map<String,dynamic> map,String phoneNumber);
  cacheScnNumber(String scnNumber);
  Future<String> getPhoneNumber();
}