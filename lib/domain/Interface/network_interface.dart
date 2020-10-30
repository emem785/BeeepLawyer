import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:dartz/dartz.dart';


abstract class NetworkInterface {
  Future<Either<Failure, Map<String, dynamic>>> post({endPoint, body});
  Future<Either<Failure, Map<String, dynamic>>> get(endPoint, [data]);
  Future<Either<Failure, Map<String, dynamic>>> postAuth({endpoint,body});
  Future<Either<Failure, Map<String, dynamic>>> getAuth(endpoint,[data]);
}
