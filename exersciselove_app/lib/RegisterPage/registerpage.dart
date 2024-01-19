import 'package:animate_do/animate_do.dart';
import 'package:exersciselove_app/splashscrren/startpage.dart';
import 'package:exersciselove_app/widget/sametext.dart';
import 'package:exersciselove_app/widget/textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  SingleChildScrollView(
      child: SlideInRight(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assest/image/register.jpg"),
              headertext(head: "Register Here"),
              const Text("Enter Your Email"),
              const SizedBox(height: 10),
              const textfielduse(),
              const Text("Enter Your mobile number"),
              const SizedBox(height: 10),
              const textfielduse(),
              const Text("Enter Your password"),
              const SizedBox(height: 10),
              const textfielduse(),
              const SizedBox(height: 20,),
              CustomButton(ctext: "Register", onTap: (){}),
              const SizedBox(height: 15,),
                const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.linear_scale),
                          Icon(Icons.linear_scale),
                          SizedBox(width: 20,),
                          Text("Or"),
                          SizedBox(width: 20,),
                          Icon(Icons.linear_scale),
                          Icon(Icons.linear_scale),
                          
                        ],
                        
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(15),
                            splashColor: const Color.fromARGB(255, 239, 188, 224),
                            onTap: () {},
                            child: Container(
                              width: 180,
                              decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all()
          
                              ),
                              child: Image.asset("assest/image/google.png",height: 50,width: 50,),
                            ),
                            
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(15),
                            splashColor: const Color.fromARGB(255, 239, 188, 224),
                            onTap: () {},
                            child: Container(
                              width: 180,
                              decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all()
          
                              ),
                              child: Image.asset("assest/image/fb2.png",height: 50,width: 50,),
                            ),
                          ),
                          
                          
          
            ],
          ),
          const SizedBox(height: 10,),
          const Center(child: Text("By Continue to login,you accept our Company's")),
              const SameText()
        ])),
      ),
    ));
  }
}