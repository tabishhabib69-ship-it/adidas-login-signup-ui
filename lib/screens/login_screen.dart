import 'package:ecommerce/reusable_components/btn.dart';
import 'package:ecommerce/reusable_components/checkBox.dart';
import 'package:ecommerce/reusable_components/formField.dart';
import 'package:ecommerce/screens/HomE_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const new({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                width: 300,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      CForm(
                        labeltext: "Email",
                        hinttext: "e.g Your@gmail.com",
                        prefixicon: Icons.email_outlined,
                      ),
                      SizedBox(height: 10),
                      CForm(
                        labeltext: "Password",
                        hinttext: "ABC123&&",
                        prefixicon: Icons.password_outlined,
                      ),

                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkboxx(),
                          SizedBox(width: 1),
                          Text("Remeber me!"),
                        ],
                      ),
                      SizedBox(height: 5),
                      Btn(
                        name: "Forget Password ?",
                        nextscreen: HomeScreen(),
                        type: Btntype.text,
                      ),
                      SizedBox(height: 5),
                      Btn(
                        type: Btntype.elevated,
                        name: "Login",
                        bclr: const Color.fromARGB(255, 2, 38, 198),
                        nextscreen: HomeScreen(),
                        tclr: Colors.white,
                        radious: 10,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have a account!"),

                          Btn(
                            name: "SignUp",
                            nextscreen: SignupScreen(),
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
