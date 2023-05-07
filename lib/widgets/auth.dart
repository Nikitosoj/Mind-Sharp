import 'package:flutter/material.dart';
import 'package:mind_sharp/resources/resources.dart';

import 'package:mind_sharp/widgets/gradient_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  void _singup() {
    Navigator.of(context).pushNamed('/sing_up');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(9, 18, 40, 1),
        ),
        Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.background), fit: BoxFit.cover),
          ),
          child: null /* add child content here */,
        ),
        // SvgPicture.asset(
        //   '../../src/img/Group.svg',
        //   alignment: Alignment.center,
        // ),
        Column(
          children: [
            _logo(),
            _loginBox(),
            SizedBox(height: 70),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HAVE AN ACCOUNT?',
                    style: TextStyle(
                        fontFamily: 'Malgun-Gothic',
                        color: Color.fromRGBO(255, 255, 255, 0.15),
                        fontSize: 16),
                  ),
                  TextButton(
                      onPressed: _singup,
                      child: Text(
                        'Sing up',
                        style: TextStyle(
                            fontFamily: 'SairaExtraCondensed',
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Color.fromRGBO(120, 139, 235, 0.8)),
                      ))
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

class _logo extends StatelessWidget {
  const _logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Text('Mind Sharp',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Iceland',
            )),
        SizedBox(height: 20),
        Container(child: Image(image: AssetImage(AppImage.logo)))
      ],
    );
  }
}

class _loginBox extends StatefulWidget {
  const _loginBox({super.key});

  @override
  State<_loginBox> createState() => __loginBoxState();
}

class __loginBoxState extends State<_loginBox> {
  final _loginTextController = TextEditingController();
  void _auth() {
    if (_loginTextController.text == 'admin') {
      Navigator.of(context).pushNamed('/home');
      setState(() {});
    }
  }

  void _checkMinLogin(String text) {
    if (text.length <= 4) {
      opacity = 0.5;
      setState(() {});
    } else {
      opacity = 1;
      setState(() {});
    }
  }

  var opacity = 0.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '  Sing in throught u nickname',
            style: TextStyle(
                fontSize: 10,
                color: Color.fromRGBO(255, 255, 255, 0.9),
                fontFamily: 'Malgun-Gothic'),
          ),
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(5),
              elevation: 5,
              shadowColor: Colors.black,
              color: Color.fromRGBO(32, 52, 122, 0.49),
              child: TextField(
                  onEditingComplete: _auth,
                  onChanged: _checkMinLogin,
                  controller: _loginTextController,
                  style: TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                  decoration: InputDecoration(
                    hintText: 'nickname',
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 15, color: Color.fromRGBO(6, 7, 16, 1))),
                  )),
            ),
          ),
          SizedBox(height: 50),
          Container(
              width: double.infinity,
              height: 70,
              child: UnicornOutlineButton(
                  radius: 16,
                  strokeWidth: 8,
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(16, 15, 67, opacity),
                    Color.fromRGBO(19, 29, 120, opacity),
                    Color.fromRGBO(50, 112, 205, opacity),
                    Color.fromRGBO(74, 12, 96, opacity),
                    Color.fromRGBO(94, 2, 186, opacity),
                  ]),
                  onPressed: _auth,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'SairaExtraCondensed',
                        fontSize: 40,
                        color: Color.fromRGBO(133, 193, 237, 1)),
                  ))),
        ],
      ),
    );
  }
}

// \\\\\\\\\\\\\\\
