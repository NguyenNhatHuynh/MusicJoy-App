import 'package:get_it/get_it.dart';
import 'package:musicjoy/data/repository/auth/auth_repository_impl.dart';
import 'package:musicjoy/data/source/auth/auth_firebase_service.dart';
import 'package:musicjoy/domain/repository/auth/auth.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl(),
  );

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );
}
