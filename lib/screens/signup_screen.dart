import 'package:ecommerce/reusable_components/btn.dart';
import 'package:ecommerce/reusable_components/checkBox.dart';
import 'package:ecommerce/reusable_components/formField.dart';
import 'package:ecommerce/screens/HomE_screen.dart';
import 'package:ecommerce/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/Bg.jpg", fit: BoxFit.fill),
          ),
          Center(
            child: Opacity(
              opacity: 1,
              child: Container(
                width: 380,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Sign UP!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: CForm(
                              labeltext: "FirstName",
                              hinttext: "Jhon",
                            ),
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: CForm(
                              labeltext: "LastName",
                              hinttext: "Doe",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      CForm(
                        labeltext: "EmailAddress",
                        hinttext: "e.g Your@gmail.com",
                        prefixicon: Icons.email_outlined,
                      ),
                      SizedBox(height: 20),
                      CForm(
                        labeltext: "Password",
                        hinttext: "ABC123&&",
                        prefixicon: Icons.password,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Checkboxx(),
                          SizedBox(width: 1),
                          Text("I agree to the terms and conditions"),
                        ],
                      ),
                      SizedBox(height: 20),
                      Btn(
                        name: "Register",
                        nextscreen: HomeScreen(),
                        type: Btntype.elevated,
                        bclr: const Color.fromARGB(255, 13, 16, 205),
                        tclr: Colors.white,
                        radious: 10,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already Have an Account?"),
                          SizedBox(width: 2),
                          Btn(
                            name: "Log in",
                            nextscreen: Login(),
                            type: Btntype.text,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
