import 'package:musicjoy/core/usecase/usecase.dart';
import 'package:musicjoy/data/models/auth/create_user_req.dart';
import 'package:dartz/dartz.dart';
import 'package:musicjoy/domain/repository/auth/auth.dart';
import 'package:musicjoy/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) {
    return sl<AuthRepository>().signup(params!);
  }
}
