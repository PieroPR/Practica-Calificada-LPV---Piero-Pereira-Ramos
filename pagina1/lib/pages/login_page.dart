import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/contenedor_circulo.dart';
import '../widgets/contenedor_input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  static const String _title = 'Login Page';
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
              child: SvgPicture.asset(
                'assets/icons/usuario.svg',
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              // child: Icon(Icons.phone_android,size: 50,color: Colors.red,),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            ContenedorInputs(
              stringsinput: "User Name",
              obscure: false,
              colr: Colors.pinkAccent,
            ),
            ContenedorInputs(
              stringsinput: "Password",
              obscure: true,
              colr: Colors.pinkAccent,
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
