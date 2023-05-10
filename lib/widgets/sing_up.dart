import 'package:flutter/material.dart';
import 'package:mind_sharp/resources/resources.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  void _login() {
    Navigator.of(context).pushNamed('/auth');
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
          child: null,
        ),
        Column(
          children: [
            _logo(),
            _loginBox(),
            SizedBox(height: 50),
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
                      onPressed: _login,
                      child: Text(
                        'Login',
                        style: TextStyle(
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
        SizedBox(height: 50),
        Text('Mind Sharp',
            style: TextStyle(
              fontSize: 40,
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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            height: 47,
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(5),
              elevation: 5,
              shadowColor: Colors.black,
              color: Color.fromRGBO(32, 52, 122, 0.49),
              child: TextField(
                  style: TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                  decoration: InputDecoration(
                    labelText: 'Enter nickname',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 15, color: Color.fromRGBO(6, 7, 16, 1))),
                  )),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 47,
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(5),
              elevation: 5,
              shadowColor: Colors.black,
              color: Color.fromRGBO(32, 52, 122, 0.49),
              child: TextField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                  style: TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                  decoration: InputDecoration(
                    labelText: 'Enter password',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 15, color: Color.fromRGBO(6, 7, 16, 1))),
                  )),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 47,
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(5),
              elevation: 5,
              shadowColor: Colors.black,
              color: Color.fromRGBO(32, 52, 122, 0.49),
              child: TextField(
                  obscuringCharacter: '*',
                  autocorrect: false,
                  enableSuggestions: false,
                  obscureText: true,
                  style: TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(133, 193, 237, 0.4)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 15, color: Color.fromRGBO(6, 7, 16, 1))),
                  )),
            ),
          ),
          SizedBox(height: 20),
          Container(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        fontFamily: 'SairaExtraCondensed',
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: Color.fromRGBO(133, 193, 237, 1)),
                  ))),
        ],
      ),
    );
  }
}
// \\\\\\\\\\\\\\\
