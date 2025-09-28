import 'package:flutter/material.dart';
import 'home.dart';
import 'tools.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final Tools tools = Tools();

  Widget text({String? s, double? size, FontWeight? weight, Color? color}) {
    return Text(
      s ?? '',
      style: TextStyle(fontSize: size, fontWeight: weight, color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              text(
                s: "Top Up Games Online",
                size: 20,
                weight: FontWeight.bold,
                color: Colors.black,
              ),
              SizedBox(height: 20),   
              text(
                s: "Tekan logo untuk melanjutkan",
                size: 15,
                weight: FontWeight.bold,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}