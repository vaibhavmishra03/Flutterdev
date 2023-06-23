// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:myhr/utils/routes.dart";

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
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
          Text(
            "WELCOME $name !",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
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
                InkWell(
                  splashColor: Colors.white,
                  onTap: () async {
                    setState(() {
                      changebutton = true;
                    });

                    await Future.delayed(const Duration(seconds: 1));

                    // ignore: use_build_context_synchronously
                    Navigator.pushNamed(context, Myroutes.homeroute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),

                    width: changebutton ? 50 : 120,
                    height: 52,
                    // color: Colors.deepPurple,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      // shape:
                      // changebutton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50.0 : 8.0),
                    ),

                    alignment: Alignment.center,
                    child: changebutton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                  ),
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, Myroutes.homeroute);
                //     },
                //     child: Text("Login"),
                //     style:
                //         TextButton.styleFrom(minimumSize: Size(100.0, 40.0))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
