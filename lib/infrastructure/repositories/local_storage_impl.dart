import 'dart:convert';

import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer2/infrastructure/models/user.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const USER_KEY = 'user';
const TOKEN_KEY = 'token';
const BUDDY_KEY = 'buddy';

//This module is used for caching local data

@LazySingleton(as: LocalStorageInterface)
class LocalStorageImpl implements LocalStorageInterface {
  @override
  Future cacheUser(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(USER_KEY, data);
  }

// returns cached user
  @override
  Future<Either<Failure, String>> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    String data = prefs.getString(USER_KEY);
    if (data == null) {
      return Left(CacheFailure("user not available"));
    } else {
      return right(data);
    }
  }

  @override
  Future removeUser() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(USER_KEY);
  }

  @override
  Future cacheToken(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(TOKEN_KEY, data);
  }

  @override
  Future<Either<Failure, String>> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    String data = prefs.getString(TOKEN_KEY);
    if (data == null) {
      return Left(CacheFailure("token not available"));
    } else {
      return right(data);
    }
  }

  @override
  Future removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(TOKEN_KEY);
  }

  @override
  Future<User> cacheUserFromRegister(
      Map<String, dynamic> map, String phoneNumber) async {
    final userMap = map["response"]["content"]["details"];
    final tokenMap = map["response"]["auth_keys"]["access_token"];
    final user = User.fromJson(userMap);
    user.phone = phoneNumber;
    await cacheUser(jsonEncode(user));
    await cacheToken(jsonEncode(tokenMap));
    return user;
  }

  @override
  Future<User> cacheUserFromSignIn(
      Map<String, dynamic> map, String phoneNumber) async {
    final userMap = map["response"]["content"]["details"];
    final tokenMap = map["response"]["auth_keys"]["access_token"];
    final user = User.fromJson(userMap);
    user.phone = phoneNumber;
    await cacheUser(jsonEncode(user));
    await cacheToken(jsonEncode(tokenMap));
    return user;
  }

  @override
  cacheScnNumber(String scnNumber) async {
    final response = await getUser();
    final userString = response.fold((l) => null, (r) => r);
    final user = User.fromJson(jsonDecode(userString));
    user.scnNumber = scnNumber;
    await cacheUser(jsonEncode(user));
  }
}