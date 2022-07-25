import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String logoSVG = 'assets/images/logo_primary.svg';
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202024),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 95),
            child: Column(
              children: [
                SvgPicture.asset(logoSVG),
                const Padding(
                  padding: EdgeInsets.only(top: 80, bottom: 25),
                  child: Text(
                    'Acessa sua conta',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                _inputWidget(
                  context,
                  const Icon(PhosphorIcons.envelope),
                  'E-mail',
                  emailController,
                ),
                _inputWidget(
                  context,
                  const Icon(PhosphorIcons.key),
                  'Senha',
                  passwordController,
                ),
                _buttonLogin(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buttonLogin(BuildContext context) {
    return Container(
      width: 360,
      height: 55,
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: ElevatedButton(
        onPressed: () {
          print('Second text field: ${emailController.text}');
          print('Second text field: ${passwordController.text}');
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: const Text('Entrar'),
      ),
    );
  }

  Container _inputWidget(
    BuildContext context,
    Icon prefixIcon,
    String hintText,
    TextEditingController formController,
  ) {
    return Container(
      width: 360,
      height: 55,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: TextField(
        controller: formController,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
        ),
      ),
    );
  }
}
