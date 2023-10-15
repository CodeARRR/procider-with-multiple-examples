import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/components/practice_api.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passowardController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passowardController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'enter email',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passowardController,
              decoration: InputDecoration(
                hintText: 'enter passoward',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Consumer<AuthProvider>(builder: (context, value, child) {
              return InkWell(
                onTap: () {
                  authProvider.Login(emailController.text.toString(),
                      passowardController.text.toString());
                },
                child: Container(
                  height: 50,
                  child: Center(
                      child: authProvider.loading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(fontSize: 20),
                            )),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
