import 'package:dartz/dartz.dart';
import 'package:musicjoy/data/models/auth/create_user_req.dart';
import 'package:musicjoy/data/models/auth/signin_user_req.dart';
import 'package:musicjoy/data/source/auth/auth_firebase_service.dart';
import 'package:musicjoy/domain/repository/auth/auth.dart';
import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SigninUserReq sigininUserReq) async {
    return await sl<AuthFirebaseService>().signin(sigininUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }
}
