import 'package:musicjoy/core/usecase/usecase.dart';
import 'package:musicjoy/data/models/auth/create_user_req.dart';
import 'package:dartz/dartz.dart';
import 'package:musicjoy/data/models/auth/signin_user_req.dart';
import 'package:musicjoy/domain/repository/auth/auth.dart';
import 'package:musicjoy/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) {
    return sl<AuthRepository>().signin(params!);
  }
}
