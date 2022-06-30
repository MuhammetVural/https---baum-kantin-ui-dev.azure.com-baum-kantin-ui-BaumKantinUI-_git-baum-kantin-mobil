import 'package:flutter/material.dart';
import 'menu.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //   decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       colors: [
        //         Colors.white,
        //         Colors.grey,
        //       ]
        //   ),
        // ),
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Text("Welcome",
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold)),
                    Text("to",
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold)),
                    Text("Cafeteria*",
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Form(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white70,
                                labelText: 'E-Mail',
                                labelStyle: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                                hintText: 'Enter your E-Mail address'),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015),
                          TextField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                              hintText: 'Enter your password',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Menu(),
                        ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'Register*',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => Demo2Page(),
                        // )
                        // );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
