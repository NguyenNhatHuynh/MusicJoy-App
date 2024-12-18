import 'package:get_it/get_it.dart';
import 'package:musicjoy/data/repository/auth/auth_repository_impl.dart';
import 'package:musicjoy/data/source/auth/auth_firebase_service.dart'; // Cập nhật tên dịch vụ nếu cần
import 'package:musicjoy/domain/repository/auth/auth.dart';
import 'package:musicjoy/domain/usecases/auth/signin.dart';
import 'package:musicjoy/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(
      AuthFirebaseServiceImpl()); // Sử dụng Supabase service ở đây

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
