import 'package:class_assigment/view/Login&Signup/signup_screen.dart';
import 'package:class_assigment/viewmodel/LoginScreen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginscreenController loginController =
      Get.put(LoginscreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
                const Padding(
                  padding: EdgeInsets.only(left: 140),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 88, left: 85),
                  child: Image.asset('assets/images/Ellipse.png'),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Welcome Back',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 10),
              child: Text(
                'Please Inter your email address \n and password for Login',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: TextFormField(
                // controller: controller.emailController.value,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  hintText: 'Enter Your Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  hintText: 'Enter Your Password',
                  prefixIcon: Icon(Icons.lock_open_outlined),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 260, top: 10),
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Image.asset('assets/icons/Sign In.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 160),
              child: Text(
                'SignIn with',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/Apple.png'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Image.asset('assets/icons/Google.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not Registrar Yet? ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const SignupScreen());
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xff756EF3),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
