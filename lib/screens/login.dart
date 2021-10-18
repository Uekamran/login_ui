import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    var _isVisible = false;
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Container(
            height: screenHeight * 0.30,
            width: double.infinity,
            color: Colors.white,
            child: FittedBox(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/kami.jpg"),
                radius: 120,
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.65,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: LayoutBuilder(builder: (ctx, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login Now",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Please enter the details below to proceed"),
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffb4b4b4).withOpacity(0.4)),
                    height: constraints.maxHeight * 0.12,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Test@flutter.com",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: constraints.maxHeight * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffb4b4b4).withOpacity(0.4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Center(
                        child: TextField(
                          obscureText: _isVisible ? false : true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isVisible = !_isVisible;
                                    });
                                  },
                                  icon: Icon(
                                    _isVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  )),
                              hintText: "Enter Password"),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.pink),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: RichText(
                      text: TextSpan(
                          text: 'Dont have Any account',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text: "Register",
                                style:
                                    TextStyle(color: Colors.pink, fontSize: 15),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}),
                          ]),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      )),
    );
  }
}
