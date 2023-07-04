// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:myhr/utils/routes.dart";
import "package:velocity_x/velocity_x.dart";

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, Myroutes.homeroute);

      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginapp.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16.0,
            ),
            "WELCOME $name !"
                .text
                .bold
                .xl3
                .color(context.theme.colorScheme.secondary)
                .make(),
            // Text(
            //   "WELCOME $name !",
            //   style: const TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 24),
            // ),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username is required";
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password required";
                      } else if (value.length < 8) {
                        return "atleast 8 characters required";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(
                    height: 60.0,
                  ),
                  Material(
                    color: context.theme.highlightColor,
                    borderRadius:
                        BorderRadius.circular(changebutton ? 50.0 : 8.0),
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () => movetohome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),

                        width: changebutton ? 50 : 120,
                        height: 52,
                        // color: Colors.deepPurple,
                        // decoration: BoxDecoration(
                        //   color: Colors.deepPurple,
                        //   // shape:
                        //   // changebutton ? BoxShape.circle : BoxShape.rectangle,
                        //   borderRadius:
                        //       BorderRadius.circular(changebutton ? 50.0 : 8.0),
                        // ),

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
      ),
    );
  }
}
