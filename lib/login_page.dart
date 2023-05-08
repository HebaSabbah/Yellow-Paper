import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController userNamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/login.jpg",
              width: 150,
            ),
            customtextfield(
                hintMessage: "User Name",
                controller: userNamecontroller,
                isItScureText: false),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (userNamecontroller.text.isEmpty) {
                    print("User Name is Requared");
                  } else
                    print("Log In");

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return const HomeScreen();
                      }),
                    ),
                  );
                },
                child: const Text(
                  "Submmet",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customtextfield(
      {required String hintMessage,
      required TextEditingController controller,
      required bool isItScureText}) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextField(
        controller: controller,
        obscureText: isItScureText,
        decoration: InputDecoration(
          hintText: hintMessage,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.0),
          ),
        ),
      ),
    );
  }
}
