import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthFormWidget(),
    );
  }
}

class AuthFormWidget extends StatefulWidget {
  const AuthFormWidget({Key? key}) : super(key: key);

  @override
  State<AuthFormWidget> createState() => _AuthFormWidgetState();
}

class _AuthFormWidgetState extends State<AuthFormWidget> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                height: 100,
                width: MediaQuery.of(context).size.width - 20,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Регистрация и вход',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                height: 100,
                width: MediaQuery.of(context).size.width - 20,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Вход',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 20,
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 20,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Пароль',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Забыли пароль?',
              ),
            ),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Войти'),
                  onPressed: () {
                    context.read<AuthService>().signIn(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim());
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Нет аккаунта?'),
                TextButton(
                  child: const Text(
                    'Зарегистрируйтесь!',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
