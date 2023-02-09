import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routeName = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/bg.jpeg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Form(
                      key: formKey,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                controller: _usernameController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (s) {},
                                decoration: InputDecoration(
                                    hintText: "Enter email",
                                    labelText: "Username"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.text,
                                validator: (s) {},
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter password",
                                    labelText: "Password"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Constants.prefs?.setBool("loggedIn", true);
                                  // if you need you can pass data to the HomePage("HERE")
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => HomePage()));
                                  // Navigator.pushNamed(
                                  Navigator.pushReplacementNamed(
                                      context, HomePage.routeName);
                                },
                                child: Text("Sign In"),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}
