// import 'dart:convert';

// import 'package:beep_lawyer_3/core/error/failure.dart';
// import 'package:beep_lawyer_3/domain/Interface/api.dart';
// import 'package:beep_lawyer_3/infrastructure/models/user.dart';
// import 'package:beep_lawyer_3/infrastructure/repositories/local_storage_repo.dart';
// import 'package:dartz/dartz.dart';

// const USER_KEY = 'user';
// const TOKEN_KEY = 'token';

// class FakeApiRepository implements ApiInterface {
//   LocalStorageRepo localStorageRepo;
//   FakeResponse fakeResponse;
//   FakeApiRepository({this.fakeResponse, this.localStorageRepo});

//   @override
//   Future<Either<Failure, String>> getVerifyCode(String phoneNumber) async {
//     await Future.delayed(const Duration(seconds: 2));
//     final jsonResponse = fakeResponse.fakeGetVerifyCode(phoneNumber);
//     final response = jsonDecode(jsonResponse);
//     final code = response["response"]["code"]["code"];
//     final vCode = response["response"]["content"]["verification_code"]["code"];
//     if (code == 200) {
//       return Right(vCode);
//     } else {
//       return Left(ServerFailure("Failed to connect to server"));
//     }
//   }

//   @override
//   Future signOut() {
//     return null;
//   }

//   @override
//   Future<Either<Failure, User>> mobileVerify(
//       String phoneNumber, String code) async {
//     await Future.delayed(const Duration(seconds: 2));
//     final jsonResponse = fakeResponse.fakeMobileVerify();
//     final response = jsonDecode(jsonResponse);
//     final code = response["response"]["code"]["code"];
//     final userStr = response["response"]["content"]["details"];
//     if (code == 202) {
//       final user = User.fromJson(userStr);
//       return Right(user);
//     } else {
//       return Left(ServerFailure("Failed to connect to server"));
//     }
//   }

//   @override
//   Future<Either<Failure, bool>> registerUser(String firstName, String lastName,
//       String email, String phoneNumber, String password) async {
//     await Future.delayed(const Duration(seconds: 2));
//     final jsonResponse = fakeResponse.fakeRegister(firstName);
//     final response = jsonDecode(jsonResponse);
//     final code = response["response"]["code"]["code"];
//     if (code == 201) {
//       return Right(true);
//     } else {
//       return Left(ServerFailure("Failed to connect to server"));
//     }
//   }

//   @override
//   Future<Either<Failure, User>> signIn(
//       String phoneNumber, String password) async {
//     await Future.delayed(const Duration(seconds: 2));
//     final jsonResponse = fakeResponse.fakeSignIn();
//     final response = jsonDecode(jsonResponse);
//     var code = response["response"]["code"]["code"];
//     var userStr = response["response"]["content"]["details"];
//     if (code == 201) {
//       final user = User.fromJson(userStr);
//       return Right(user);
//     } else {
//       return Left(ServerFailure("Failed to connect to server"));
//     }
//   }

//     @override
//   Future<Either<Failure, bool>> updateUser(
//       String firstName,
//       String lastName,
//       String email,
//       String phoneNumber,
//       String twitterHandle) {}

//           @override
//   Future<Either<Failure, bool>> addBuddy(
//       String firstName,
//       String lastName,
//       String phoneNumber,
//       String relationship) {}
// }

// class FakeResponse {
//   dynamic fakeRegister(String firstName) {
//     Map<String, dynamic> response = {
//       "response": {
//         "code": {"code": 201, "detail": "(Created)"},
//         "task_successful": true,
//         "content": {
//           "user": "$firstName",
//           "message": "created and authenticated new user - (Frank)"
//         },
//         "auth_keys": {
//           "access_token": {"token": false, "message": "User Not Yet Verified"}
//         }
//       }
//     };

//     return jsonEncode(response);
//   }

//   dynamic fakeGetVerifyCode(String phoneNumber) {
//     var response = {
//       "response": {
//         "task_successful": true,
//         "code": {"code": 200, "detail": "(OK)"},
//         "content": {
//           "verification_code": {"date": "04-06-2020", "code": "4208"},
//           "message": ""
//         },
//         "auth_keys": {"access_token": []}
//       }
//     };

//     return jsonEncode(response);
//   }

//   dynamic fakeMobileVerify() {
//     var response = {
//       "response": {
//         "task_successful": true,
//         "code": {"code": 202, "detail": "(Accepted)"},
//         "content": {
//           "user": "",
//           "message": "User account activated",
//           "details": {
//             "id": 48,
//             "user_id": 101,
//             "plan_id": null,
//             "firstname": "jerry",
//             "lastname": "smith",
//             "twitter_handle": "@",
//             "address": "none supplied",
//             "email": "jerry@smith",
//             "phone": "08013233434",
//             "longitude": null,
//             "latitude": null,
//             "is_verified": true,
//             "image": "",
//             "buddies": []
//           }
//         },
//         "auth_keys": {
//           "access_token":
//               "l4bMmS-3IP-uiZ-fbV7IA3lZD959Midsl5Ej1_AQbDyxnJsLN6fM-g"
//         }
//       }
//     };

//     return jsonEncode(response);
//   }

//   dynamic fakeSignIn() {
//     var response = {
//       "response": {
//         "code": {"code": 201, "detail": "(Created)"},
//         "task_successful": true,
//         "content": {
//           "message": "Authenticated new user",
//           "user_type": "Civilian",
//           "details": {
//             "id": 48,
//             "user_id": 101,
//             "plan_id": null,
//             "firstname": "jerry",
//             "lastname": "smith",
//             "twitter_handle": "@",
//             "address": "none supplied",
//             "email": "jerry@smith",
//             "phone": "0809344476348",
//             "longitude": null,
//             "latitude": null,
//             "is_verified": true,
//             "image": ""
//           }
//         },
//         "auth_keys": {
//           "access_token":
//               "Xj0BGJtUVa5MXs8fpNnOhWIu0jnrsfbdlXn0a2MHlhdnLHETEvzi6g"
//         }
//       }
//     };

//     return jsonEncode(response);
//   }
// }
