import "package:flutter/material.dart";
import "package:myhr/utils/routes.dart";

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/loginapp.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            "WELCOME",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "USERNAME",
                    hintText: "Enter username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "PASSWORD",
                    hintText: "Enter password",
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Myroutes.homeroute);
                    },
                    child: Text("Login"),
                    style:
                        TextButton.styleFrom(minimumSize: Size(100.0, 40.0))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
