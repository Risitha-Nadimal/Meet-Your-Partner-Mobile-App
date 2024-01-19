import 'package:animate_do/animate_do.dart';
import 'package:exersciselove_app/RegisterPage/registerpage.dart';
import 'package:exersciselove_app/splashscrren/startpage.dart';
import 'package:exersciselove_app/troubleloginpage/troubleloginpage.dart';
import 'package:exersciselove_app/widget/sametext.dart';
import 'package:exersciselove_app/widget/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SlideInRight(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width / 1.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.topCenter,
                                child: Image.asset("assest/image/hart.png",
                                    height: 100, width: 100)),
                            const SizedBox(
                              height: 20,
                            ),
                            headertext(head: "Login to a Lovely Life")
                          ],
                        ),
                      ),
                      Image.asset("assest/image/couple.png",
                          height: 300, width: 160),
                    ],
                  ),
                  const Text(
                    "Enter your mail ",
                  ),
                  const textfielduse(),
                  const SizedBox(height: 10,),
                  const Text( "Enter your Password "),
                  const textfielduse(),
                  TextButtonUse(name: "Trouble Login",alignmentGeometry: Alignment.topRight,onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TroubleLoginPage() ,));
                  }),
                    CustomButton(ctext: "Login", onTap: (){}),
                    const SizedBox(height: 20,),
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
                    const SizedBox(height: 20,),
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
                    TextButtonUse(name: "Don't have account",alignmentGeometry: Alignment.center,onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage() ,));
                    }),
                    const SizedBox(height: 15,),
                    const Center(child: Text("By Continue to login,you accept our Company's")),
                    const SameText(),
                    
                ],
              )),
        ),
      ),
    );
  }
}



class TextButtonUse extends StatelessWidget {
   TextButtonUse({
    super.key,
    required this.name,
    required this.alignmentGeometry,
    required this.onTap
  });
  String name;
  AlignmentGeometry alignmentGeometry;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignmentGeometry,
      child: TextButton(onPressed: onTap, child:  Text(name,style: const TextStyle(color: Colors.black),))
      );
  }
}


