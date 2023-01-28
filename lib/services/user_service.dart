import 'package:exemplo_provider/repositories/user_repository.dart';

class UserService {
  final UserRepository repository;
  UserService({
    required this.repository,
  });

  String getName() => repository.name;
}
