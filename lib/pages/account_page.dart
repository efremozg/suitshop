import 'package:flutter/material.dart';
import 'package:flutter_costumeshop/auth/auth_service.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: OutlinedButton(
            onPressed: () {
              context.read<AuthService>().signOut();
            },
            child: const Text('Выйти')));
  }
}
