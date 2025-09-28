import 'package:flutter/material.dart';
import 'package:posttest2/tools.dart';
import 'login.dart';

class RegisterPage extends StatelessWidget {
  Tools tools = Tools();

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
                  MaterialPageRoute(builder: (context) => LoginPage())
                );
              }, 
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
            tools.text(
              s: "Register",
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
              SizedBox(height: 40),
              Center(
                child: tools.text(
                  s: "Silahkan Register",
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

              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Telepon',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Negara',
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (context) => LoginPage())
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