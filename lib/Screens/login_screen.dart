import 'package:flutter/material.dart';
import 'package:task_manager_app/Components/tsk_txtfield.dart';
import 'package:task_manager_app/Screens/home_page.dart';
import 'package:task_manager_app/Styles/colors.dart';
import 'package:task_manager_app/Styles/txt_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/login.png"),
            Column(
              children: [
                TskTextField(hint: "username"),
                SizedBox(
                  height: 10,
                ),
                TskTextField(hint: "Password")
              ],
            ),
            MaterialButton(
              onPressed: () {
                //TODO: success login
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                  return HomeScreen();
                }));
              },
              color: kcAccentColor,
              child: Text(
                "Login",
                style: titleStyle.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
