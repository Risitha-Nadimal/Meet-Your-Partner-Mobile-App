import 'package:animate_do/animate_do.dart';
import 'package:exersciselove_app/splashscrren/startpage.dart';
import 'package:exersciselove_app/widget/sametext.dart';
import 'package:exersciselove_app/widget/textfield.dart';
import 'package:flutter/material.dart';

class TroubleLoginPage extends StatefulWidget {
  const TroubleLoginPage({super.key});

  @override
  State<TroubleLoginPage> createState() => _TroubleLoginPageState();
}

class _TroubleLoginPageState extends State<TroubleLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlideInRight(
      child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assest/image/trouble.png"),
                const SizedBox(
                  height: 40,
                ),
                Center(child: headertext(head: "Trouble Log in?")),
                const SizedBox(
                  height: 40,
                ),
                const Text("Enter you mail"),
                const textfielduse(),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(ctext: "Send Resert Imail", onTap: () {}),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                    child:
                        Text("By Continue to login,you accept our Company's")),
                const SameText()
              ],
            )),
      ),
    ));
  }
}
