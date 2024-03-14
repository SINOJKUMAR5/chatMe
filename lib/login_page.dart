// ignore_for_file: use_build_context_synchronously

import 'package:chartme/home_page.dart';
import 'package:chartme/theme.dart/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  TextEditingController user_id_controller = TextEditingController();

  TextEditingController user_name_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light_theme.colorScheme.inversePrimary,
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 500,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 60),
            child: TextField(
              controller: user_id_controller,
              decoration: InputDecoration(
                hintText: "user_id",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: light_theme.colorScheme.primary),
                    borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: light_theme.colorScheme.primary),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 60),
            child: TextField(
              controller: user_name_controller,
              decoration: InputDecoration(
                hintText: "user_name",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: light_theme.colorScheme.primary),
                    borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: light_theme.colorScheme.primary),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () async {
                await ZIMKit().connectUser(
                    id: user_id_controller.text,
                    name: user_name_controller.text);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const home_page();
                }));
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: light_theme.colorScheme.primary),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  )))
        ]),
      ),
    );
  }
}
