import 'package:exersciselove_app/loginpage/loginpage.dart';
import 'package:flutter/material.dart';

class SameText extends StatelessWidget {
  const SameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButtonUse(name: "Term & Conditions",alignmentGeometry: Alignment.center,onTap: (){}),
        const Text("and"),
        TextButtonUse(name: "Privacy policies",alignmentGeometry: Alignment.center,onTap: (){}),
      ],
    );
  }
}