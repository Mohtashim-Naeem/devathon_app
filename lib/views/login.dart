import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devathon_app/constants/colors.dart';
import 'package:devathon_app/views/home.dart';
import 'package:devathon_app/views/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _userIdControl = TextEditingController();

  TextEditingController _passwordControl = TextEditingController();
  bool isLogingIn = false;

  login() async {
    try {
      isLogingIn = true;
      setState(() {});

      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _userIdControl.text, password: _passwordControl.text);
      await ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.blue,
        content: Text('Login Successful!'),
      ));
      print('============${credential.user!.uid}========');

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Home(
                  // documentId:  FirebaseFirestore.instance.doc(_),
                  )));
      print('============${credential.user!.uid}========');
    } catch (e) {
      isLogingIn = false;
      setState(() {});

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text('Wrong Password or Email'),
      ));
      print('I am error ============$e===========');
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset('assets/images/Login-rafiki 1.png'),
                ),
                Hero(
                  tag: 'main',
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: width * 0.1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      'Username:',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ],
                ),
                CustomTextField(
                    controller: _userIdControl,
                    labeltext: 'Enter your Username',
                    icon: Icon(Icons.person),
                    size: 12),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                CustomTextField(
                    controller: _passwordControl,
                    labeltext: '...................',
                    icon: Icon(Icons.send),
                    size: 12),
                SizedBox(height: height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUp())));
                      },
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(
                            color: AppColors.purple,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Divider(
                        height: 100,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('or'),
                    SizedBox(width: 10),
                    Flexible(
                      child: Divider(
                        height: 100,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Hero(
                  tag: 'auth',
                  child: ElevatedButton(
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                          elevation: 30,
                          shadowColor: AppColors.buttonShadow,
                          backgroundColor: AppColors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          fixedSize: Size(width * 0.85, 70)),
                      child: isLogingIn
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                              ),
                            )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
