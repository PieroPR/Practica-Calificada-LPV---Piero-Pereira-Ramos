import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/contenedor_circulo.dart';
import '../widgets/contenedor_input.dart';
import '../widgets/contenedor_header.dart';

class SignPage extends StatelessWidget {
  static const String _title = 'Sign Up Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            ContenedorCirculo(
              width: 70,
              height: 70,
              child: Icon(
                CupertinoIcons.person,
                size: 50,
                color: Colors.pinkAccent,
              ),
              /* SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 50,
              height: 50,
              color: Colors.red,
            ), */
              // child: Icon(Icons.phone_android,size: 50,color: Colors.red,),
            ),
            ContenedorHeaders(
              texto: 'Sign Up',
              clr: Colors.pinkAccent,
              styl: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
            ContenedorHeaders(
              texto: 'WHO YOU ARE?',
              clr: Colors.pinkAccent,
              styl: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            ContenedorInputs(
              stringsinput: "Username",
              obscure: false,
              colr: Colors.pinkAccent,
              icon: Icon(
                Icons.person,
                color: Colors.pinkAccent,
              ),
            ),
            ContenedorInputs(
              stringsinput: "Email",
              obscure: false,
              colr: Colors.pinkAccent,
              icon: Icon(
                Icons.email,
                color: Colors.pinkAccent,
              ),
            ),
            ContenedorInputs(
              stringsinput: "Password",
              obscure: true,
              colr: Colors.pinkAccent,
              icon: Icon(
                Icons.lock,
                color: Colors.pinkAccent,
              ),
            ),
            ContenedorInputs(
              stringsinput: "Confirm Password",
              obscure: true,
              colr: Colors.pinkAccent,
              icon: Icon(
                Icons.lock,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                  ),
                  child: const Text('Login'),
                  onPressed: () {},
                )),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot your Password?',
              ),
            ),
          ],
        ));
  }
}
