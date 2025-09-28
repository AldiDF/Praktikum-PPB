import 'package:flutter/material.dart';
import 'package:posttest2/tools.dart';
import 'package:posttest2/profile.dart';
import 'register.dart';

class LoginPage extends StatelessWidget {
  final Tools tools = Tools();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => ProfilePage())
                );
              }, 
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
            tools.text(
              s: "Login",
              size: 20,
              weight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(width: 24), // Placeholder for alignment
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: ListView(
            children: [
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 90, right: 90),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: tools.text(
                  s: "Silahkan Login",
                  size: 24,
                  weight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  child: tools.text(
                    s: "Login",
                    size: 16,
                    weight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (context) => RegisterPage())
                    );
                  },
                  child: tools.text(
                    s: "Register",
                    size: 16,
                    weight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
