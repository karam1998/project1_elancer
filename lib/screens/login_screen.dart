import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project1/helpers/helpers.dart';
import 'package:project1/widget/app_text_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>with Helpers {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _emailErrorText;
  String? _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();

  }
  // void navigateToRegisterScreen() {
  //   Navigator.pushNamed(context, '/register_screen');
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text('LOGIN'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 50,),

           const Center(
             child: Text(
              'Welcome back',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 27,
                wordSpacing: 2,

              ),
          ),
           ),

           const SizedBox(height: 8,),
           const Center(
             child: Text(
              'Enter your email & password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                wordSpacing: 2,
              ),
          ),
           ),
          const SizedBox(height: 19),

          AppTextField(
            hint: 'Email',
            controller: _emailTextController,
            prefixIcon: Icons.email,
          ),
          const SizedBox(height: 10),
          AppTextField(
            hint: 'Password',
            controller: _passwordTextController,
            prefixIcon: Icons.lock,
            obscureText: true,
          ),
          const SizedBox(height: 35),
          ElevatedButton(
            onPressed: () => performLogin(),
            child: const Text('LOGIN'),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.green,
              minimumSize: const Size(0, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),

            ),
          ),
          const SizedBox(height: 10),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Don\'t have an account?',
              style: const TextStyle(
                color: Colors.black,
              ),
              children: [
                const TextSpan(text: ' '),
                TextSpan(
                  recognizer: _tapGestureRecognizer,
                  text: 'Create Now!',
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          // TextButton(
          //   onPressed: () => Navigator.pushNamed(context, '/forget_password_screen'),
          //   child: const Text("Forget Password?"),
          // )
        ],
      ),
    );
  }

  //SOLID - Single Responsibility
  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showMessage(message: 'Enter required fields!',error: true);
    return false;
  }

  void checkErrors() {
    setState(() {
      _emailErrorText =
      _emailTextController.text.isEmpty ? 'Enter email address' : null;
      _passwordErrorText =
      _passwordTextController.text.isEmpty ? 'Enter password' : null ;
    });
  }

  void login() {
    showMessage(message: 'Logged in successfully');
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
  void showMessage({required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsetsDirectional.only(
          bottom: 20,
          start: 30,
          end: 30,
        ),
        // onVisible: () => print('Visible'),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // padding: EdgeInsets.symmetric(
        //   horizontal: 20,
        //   vertical: 20,
        // ),
        // action: SnackBarAction(
        //   onPressed: () {},
        //   label: 'DONE',
        //   textColor: Colors.orange,
        // ),
      ),
    );
  }
}
