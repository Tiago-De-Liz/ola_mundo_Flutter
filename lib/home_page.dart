import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
  
}

class HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS23r-RPu2dhP9HrI3bUSdkZ3duFe7CVNJ49Q&s'
                  )
                ),
              accountName: Text('Tiago De Liz'),
              accountEmail: Text('Tiagopdeliz@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela de Início'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Desafio'),
              subtitle: Text('Tinder'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/desafio');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Home Page"),
        actions: [
          CustomSwitch(),
        ],
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador ${count}"),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              )],
            ),
          ],
          ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {  
          setState(() {
              count++;
          });
        },
        ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
        AppController.instance.changeTheme();
      }
    );
  }
}