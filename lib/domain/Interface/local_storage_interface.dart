import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/infrastructure/models/user.dart';
import 'package:dartz/dartz.dart';



abstract class LocalStorageInterface{
  Future cacheUser(String data);
  Future<Either<Failure,String>> getUser();
  Future removeUser();
  Future cacheToken(String data);
  Future<Either<Failure,String>> getToken();
  Future removeToken();
  Future<User> cacheUserFromSignIn(Map<String,dynamic> map,String phoneNumber);
  Future<User> cacheUserFromRegister(Map<String,dynamic> map,String phoneNumber);
  cacheScnNumber(String scnNumber);
}