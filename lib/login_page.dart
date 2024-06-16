import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/logo.jpg'
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0,bottom: 12.0, top: 20.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'E-mail',                  
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',                  
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(onPressed: () {
                          if (email == 'tiago' && password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {

                          }
                        }, 
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/images/background.jpg'
              ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          _body(),
        ],
      )
    );
  }
}