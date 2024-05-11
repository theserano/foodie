import 'package:flutter/material.dart';
import 'package:foodie/components/my_button.dart';
import 'package:foodie/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
              'Lets create an account for you',
              style: TextStyle(
                fontSize: 20,
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
              onTap: (){}, 
              text: 'Sign in'
            ),

            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('already have an account?', 
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login now', style:
                        TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold),
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