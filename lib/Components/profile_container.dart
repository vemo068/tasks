import 'package:flutter/material.dart';




class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Color.fromARGB(87, 155, 39, 176),
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
              image: AssetImage("assets/profile1.png"), fit: BoxFit.cover)),
    );
  }
}