import "package:flutter/material.dart";

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child :Center(
        child: Text("LOGIN",
        style: TextStyle
        (fontSize:40,
        color: Colors.blue,
        fontWeight:FontWeight.bold,
        ),
        
    ),
    ),
    );
  }
}