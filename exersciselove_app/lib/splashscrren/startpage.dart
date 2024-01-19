import 'package:animate_do/animate_do.dart';
import 'package:exersciselove_app/loginpage/loginpage.dart';
import 'package:flutter/material.dart';

class StratPage extends StatefulWidget {
  const StratPage({super.key});

  @override
  State<StratPage> createState() => _StratPageState();
}

class _StratPageState extends State<StratPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlideInRight(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset("assest/image/people.jpg"),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: const Text("Let's get closer ..",
                          style: TextStyle(fontSize: 15))),
                  headertext(head: "The best Plase to meet your futhur partner"),
                  const SizedBox(
                    height: 50,
                  ),
                   CustomButton(ctext: "Get Start",onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));} ,)
                ],
              )),
        ));
  }
}

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,
    required this.ctext,
    required this.onTap,
  });
  String ctext;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 226, 51, 54),
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
            child: Text(
          ctext,
          style: const TextStyle(fontSize: 17,color: Colors.white),
        )),
      ),
    );
  }
}

class headertext extends StatelessWidget {
  headertext({
    super.key,
    required this.head,
  });
  String head;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(head,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}
