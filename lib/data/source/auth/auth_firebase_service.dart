import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:dartz/dartz.dart';
import 'package:musicjoy/data/models/auth/create_user_req.dart';
import 'package:musicjoy/data/models/auth/signin_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<Either> signin(SigninUserReq signinUserReq);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  final supabaseClient = Supabase.instance.client;

  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    try {
      final response = await supabaseClient.auth.signIn(
        email: signinUserReq.email,
        password: signinUserReq.password,
      );

      if (response.error != null) {
        return Left(response.error!.message);
      }

      return const Right('Signin was Successful');
    } catch (e) {
      return Left('An error occurred during signin');
    }
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      final response = await supabaseClient.auth.signUp(
        createUserReq.email,
        createUserReq.password,
      );

      if (response.error != null) {
        return Left(response.error!.message);
      }

      // Sau khi đăng ký thành công, bạn có thể tạo thêm bản ghi người dùng trong database nếu cần
      final user = response.user;

      await supabaseClient.from('users').upsert({
        'id': user?.id,
        'email': createUserReq.email,
        'name': createUserReq.fullName,
      }).execute();

      return const Right('Signup was Successful');
    } catch (e) {
      return Left('An error occurred during signup');
    }
  }
}
