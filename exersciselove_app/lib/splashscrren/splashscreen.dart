import 'package:animate_do/animate_do.dart';
import 'package:exersciselove_app/splashscrren/startpage.dart';
import 'package:flutter/material.dart';

class Splashscreen_page extends StatefulWidget {
  const Splashscreen_page({super.key});

  @override
  State<Splashscreen_page> createState() => Splashscreen_pageState();
}

class Splashscreen_pageState extends State<Splashscreen_page> {
  @override
  void initState() {
    
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const StratPage())) ;
    },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
            decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assest/image/background.jpg"),
              fit: BoxFit.cover,              
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.softLight)
              ),
              ),
              
              child:   SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                        child: BounceInUp(
                          delay: const Duration(milliseconds: 3),
                          duration: const Duration(seconds: 3),
                          child: Image.asset("assest/image/hart.png",height: 100,width: 100)),
                    ),
                      const Text("Find your Soulmate ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      
                    ],
                  ),
                ),
              ),
          ));
  }
}
