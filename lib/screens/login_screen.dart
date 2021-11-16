import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/helpers/helpers.dart';
import 'package:project1/widget/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  // late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    // _tapGestureRecognizer = TapGestureRecognizer();
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
      // extendBodyBehindAppBar: true,

      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('LOGIN'),
      //   centerTitle: true,
      //   elevation: 0,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      // ),

      body: Stack(
        children: [
          // SizedBox(height: 80,),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6392CB),
                    Color(0xFF61A4F1),
                    Color(0xFF7DAAE2),
                  ],
                  stops: [
                    0.9,
                    0.5,
                    0.8
                  ]),
              // color: Colors.white,
            ),
            child: Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                padding:const EdgeInsets.symmetric(horizontal: 0, vertical:80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    SvgPicture.asset('images/Logo2.svg'),
                    const SizedBox(
                      height: 29.7,
                    ),
                    // const SizedBox(height: 10,),
                    // const Text(
                    //   'Sign In',
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 35,
                    //       fontWeight: FontWeight.bold,
                    //       fontFamily: 'SourceSansPro'),
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child:  Text(
                                'Welcome back..',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    wordSpacing: 1,
                                    fontFamily: 'SourceSansPro'),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Enter your email & password',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 18,
                                  wordSpacing: 1,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            AppTextField(
                              hint: 'Email', controller: _emailTextController,
                              prefixIcon: Icons.email,
                            ),
                            const SizedBox(height: 20),
                            AppTextField(
                              hint: 'Password',
                              controller: _passwordTextController,
                              prefixIcon: Icons.lock,
                              obscureText: true,
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                              onPressed: () => performLogin(),
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(fontSize: 22),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 10,
                                enabledMouseCursor: MouseCursor.defer,
                                shadowColor: Colors.white,
                                minimumSize: const Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              '- OR -',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              ' Sign In With ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      // print('Facebook');
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black87,
                                                offset: Offset(0, 2),
                                                blurRadius: 5.0),
                                          ],
                                          image: DecorationImage(
                                            image: AssetImage('images/facebook2.png'),
                                          )),
                                    ),

                                    // RichText(
                                    //   textAlign: TextAlign.center,
                                    //   text: TextSpan(
                                    //     text: 'Don\'t have an account?',
                                    //     style: const TextStyle(
                                    //       color: Colors.black,
                                    //     ),
                                    //     children: [
                                    //       const TextSpan(text: ' '),
                                    //       TextSpan(
                                    //         recognizer: _tapGestureRecognizer,
                                    //         text: 'Create Now!',
                                    //         style: const TextStyle(
                                    //           color: Colors.blue,
                                    //         ),
                                    //       )
                                    //     ],
                                    //   ),
                                    // ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // print('google');
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black87,
                                                offset: Offset(0, 2),
                                                blurRadius: 7.0),
                                          ],
                                          image: DecorationImage(
                                            image: AssetImage('images/google.png'),
                                          )),
                                    ),

                                    // RichText(
                                    //   textAlign: TextAlign.center,
                                    //   text: TextSpan(
                                    //     text: 'Don\'t have an account?',
                                    //     style: const TextStyle(
                                    //       color: Colors.black,
                                    //     ),
                                    //     children: [
                                    //       const TextSpan(text: ' '),
                                    //       TextSpan(
                                    //         recognizer: _tapGestureRecognizer,
                                    //         text: 'Create Now!',
                                    //         style: const TextStyle(
                                    //           color: Colors.blue,
                                    //         ),
                                    //       )
                                    //     ],
                                    //   ),
                                    // ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
    showMessage(message: 'Enter required fields!', error: true);
    return false;
  }

  void checkErrors() {
    setState(() {});
  }

  void login() {
    showMessage(message: 'Logged in successfully');
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/main_screen');
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
