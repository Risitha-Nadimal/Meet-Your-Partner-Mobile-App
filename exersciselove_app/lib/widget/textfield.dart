import 'package:flutter/material.dart';

class textfielduse extends StatelessWidget {
  const textfielduse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: "abc213@gmail.com",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 58, 57, 57),
          ),
        ),
      ),
    );
  }
}
