import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devathon_app/views/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _name = TextEditingController();
  TextEditingController _emailControl = TextEditingController();
  TextEditingController _passwordControl = TextEditingController();

  bool isSignUp = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    signup() async {
      try {
        isSignUp = true;
        setState(() {});
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailControl.text,
          password: _passwordControl.text,
        );
        FirebaseFirestore.instance
            .collection('users')
            .doc(credential.user!.uid)
            .set({
          // 'name': _name.text,
          // 'Father name': _f_name.text,
          // 'email': credential.user!.email,
          // 'gender': _gender.text,
          // 'age': _age.text,
          'uid': _name,
        });

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Account created successfuly'),
          backgroundColor: AppColors.blurColor,
        ));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      } catch (e) {
        isSignUp = false;
        setState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Something went wrong')));

        print('I am error ============$e===========');
      }
    }

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
                Text(
                  'Registration',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      'Your Name:',
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
                    controller: _name,
                    labeltext: 'Enter your Username',
                    icon: Icon(Icons.person),
                    size: 12),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Your Email',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),

                CustomTextField(
                    controller: _emailControl,
                    labeltext: 'Enter your email',
                    icon: Icon(Icons.send),
                    size: 12),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Your Password',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomTextField(
                    controller: _passwordControl,
                    labeltext: '.................',
                    icon: Icon(Icons.send),
                    size: 20),
                SizedBox(height: height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Registered?",
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Login())));
                      },
                      child: Text(
                        ' Login',
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
                // SizedBox(
                //   height: height * 0.0,
                // ),
                Hero(
                  tag: 'main',
                  child: ElevatedButton(
                      onPressed: () {
                        signup();
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 30,
                          shadowColor: AppColors.buttonShadow,
                          backgroundColor: AppColors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          fixedSize: Size(width * 0.85, 70)),
                      child: isSignUp
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
