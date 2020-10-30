import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/network_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../../core/error/failure.dart';


//TODO: Remember to change the retrofit end point
const URL = 'http://beeep.pythonanywhere.com/auth/';
const URL_SHORT = 'http://beeep.pythonanywhere.com/';

const URL2 = 'http://10.0.2.2:8000/auth/';
const URL_SHORT2 = 'http://10.0.2.2:8000/';

const URL3 = 'https://beeep1.herokuapp.com/auth/';
const URL_SHORT3 = 'https://beeep1.herokuapp.com/';

@LazySingleton(as: NetworkInterface)
class NetworkClientImpl implements NetworkInterface {
  final LocalStorageInterface localStorageInterface;

  NetworkClientImpl({@required this.localStorageInterface});
  //Authenticated Request
  @override
  Future<Either<Failure, Map<String, dynamic>>> postAuth(
      {endpoint, body}) async {
    final url = URL_SHORT2 + endpoint;
    final token = await localStorageInterface.getToken().then((value) {
      return value.fold((l) => -1, (r) => jsonDecode(r));
    });
    final userMap = await localStorageInterface.getUser().then((value) {
      return value.fold((l) => -1, (r) => jsonDecode(r));
    });
    final phone = userMap["phone"].toString();

    final Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: token,
      "phone": phone
    };

    try {
      final jsonResponse = await http
          .post(url, body: jsonEncode(body), headers: headers)
          .timeout(const  Duration(seconds: 10));
      if (jsonResponse.statusCode == 201) {
        final response = jsonDecode(jsonResponse.body);
        return Right(response);
      } else if (jsonResponse.statusCode == 202) {
        final response = jsonDecode(jsonResponse.body);
        return Right(response);
      } else if (jsonResponse.statusCode == 401) {
        return Left(NoCredentials("Username or Password might be wrong..!!"));
      } else if (jsonResponse.statusCode == 412) {
        return Left(UserExist("Phone number already exists"));
      } else {
        return Left(ServerFailure("Server Error"));
      }
    } on TimeoutException {
      return Left(ServerFailure("Request Timeout"));
    }on SocketException{
      return Left(ServerFailure("Server error"));
    }

  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getAuth(endpoint,
      [data]) async {
    final url = "$URL_SHORT2$endpoint${data != null ? '/' + data : ""}";
    final token = await localStorageInterface.getToken().then((value) {
      return value.fold((l) => -1, (r) => jsonDecode(r));
    });
    final userMap = await localStorageInterface.getUser().then((value) {
      return value.fold((l) => -1, (r) => jsonDecode(r));
    });
    final phone = userMap["phone"].toString();

    final Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: token,
      "phone": phone
    };
    try {
      final jsonResponse = await http
          .get(url, headers: headers)
          .timeout(const Duration(seconds: 10));
      if (jsonResponse.statusCode == 201) {
        final response = jsonDecode(jsonResponse.body);
        return Right(response);
      } else {
        return Left(ServerFailure("Server Error"));
      }
    } on TimeoutException {
      return Left(ServerFailure("Request Timeout"));
    }on SocketException{
      return Left(ServerFailure("Server error"));
    }
  }

  // Unauthenticated requests

  @override
  Future<Either<Failure, Map<String, dynamic>>> get(endPoint, [data]) async {
    final url = URL2 + endPoint + "/" + data ?? "";
    try {
      final jsonResponse =
          await http.get(url).timeout(const Duration(seconds: 10));
      if (jsonResponse.statusCode == 200) {
        final response = jsonDecode(jsonResponse.body);
        return Right(response);
      } else {
        return Left(ServerFailure("Server Error"));
      }
    } on TimeoutException {
      return Left(ServerFailure("Request Timeout"));
    }on SocketException{
      return Left(ServerFailure("Server error"));
    }

  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> post({endPoint, body}) async {
    final url = URL2 + endPoint;

    try {
      final jsonResponse = await http
          .post(url, body: jsonEncode(body))
          .timeout(const Duration(seconds: 10));
      if (jsonResponse.statusCode == 201) {
        final response = jsonDecode(jsonResponse.body);
        return Right(response);
      } else if (jsonResponse.statusCode == 202) {
        final response = jsonDecode(jsonResponse.body);
        return Right(response);
      } else if (jsonResponse.statusCode == 401) {
        return Left(NoCredentials("Username or Password might be wrong..!!"));
      } else if (jsonResponse.statusCode == 412) {
        return Left(UserExist("User alredy exist"));
      } else if (jsonResponse.statusCode == 403) {
        return Left(NotAuthorized("User alredy exist"));
      } else {
        return Left(ServerFailure("Server Error"));
      }
    } on TimeoutException {
      return Left(ServerFailure("Request Timeout"));
    }on SocketException{
      return Left(ServerFailure("Server error"));
    }

  }
}
