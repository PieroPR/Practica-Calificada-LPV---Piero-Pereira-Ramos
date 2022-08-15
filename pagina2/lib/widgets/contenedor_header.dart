import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContenedorHeaders extends StatelessWidget {
  final Color clr;
  final String texto;
  final TextStyle styl;

  const ContenedorHeaders(
      {super.key, required this.clr, required this.texto, required this.styl});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Text(
          this.texto,
          style: this.styl,
          // style: TextStyle(color: this.clr, fontWeight: FontWeight.w500),
        ));
  }
}
