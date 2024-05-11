import 'package:flutter/material.dart';
import 'package:foodie/components/my_button.dart';
import 'package:foodie/components/my_text_field.dart';
import 'package:foodie/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fastfood_outlined,
              size: 72.0,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Foodie',
              style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
              controller: passwordController,
              hintText: 'Password ',
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(
                onTap: () {
                  login();
                },
                text: 'Sign in'),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
