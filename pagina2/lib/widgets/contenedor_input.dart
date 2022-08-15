import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContenedorInputs extends StatelessWidget {
  final String stringsinput;
  final bool obscure;
  final Color colr;
  final Icon icon;

  const ContenedorInputs(
      {super.key,
      required this.stringsinput,
      required this.obscure,
      required this.colr,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        obscureText: this.obscure,
        decoration: InputDecoration(
            prefixIcon: this.icon,
            border: OutlineInputBorder(),
            labelText: this.stringsinput,
            labelStyle: TextStyle(
              color: this.colr,
            )),
      ),
    );

    // illed: true,
    //       fillColor: Colors.white,
    //       hintText: 'Username',
    //       contentPadding:
    //           const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: Colors.pinkAccent),
    //         borderRadius: BorderRadius.circular(25.7),
    //       ),
    //       enabledBorder: UnderlineInputBorder(
    //         borderSide: BorderSide(color: Colors.pinkAccent),
    //         borderRadius: BorderRadius.circular(25.7),

    // Container(
    //           padding: const EdgeInsets.all(10),
    //           child: TextField(
    //             controller: nameController,
    //             decoration: const InputDecoration(
    //               border: OutlineInputBorder(),
    //               labelText: 'User Name',
    //             ),
    //           ),
    //         )
  }
}
