import 'package:exemplo_provider/pages/home_page.dart';
import 'package:exemplo_provider/repositories/user_repository.dart';
import 'package:exemplo_provider/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ex Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Colors.black54, secondary: Colors.tealAccent),
      ),
      routes: {
        '/': (context) => MultiProvider(
              providers: [
                Provider(
                  create: (context) => UserRepository(name: 'Adriano'),
                ),
                Provider(
                  create: (context) => UserService(
                    repository: context.read(),
                  ),
                ),
              ],
              child: const HomePage(),
            ),
      },
    );
  }
}
