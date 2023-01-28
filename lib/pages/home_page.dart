import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/user_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserService>(context, listen: false).getName();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          user,
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondaryContainer,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
