import 'package:flutter/material.dart';
import 'tools.dart';
import 'history.dart';
import 'profile.dart';
import 'topuppage/topup.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Tools tools = Tools();

  Widget footerSection(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 228, 228, 228),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(Icons.home, size: 30, color: Colors.black),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HistoryPage()));
                },
                icon: Icon(Icons.history, size: 30, color: Colors.black),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                icon: Icon(Icons.person, size: 30, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: tools.text(
            s: "Top Up Games Online",
            size: 20,
            weight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              tools.text(
                s: "Welcome to the Top Up Games Online!",
                size: 20,
                weight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              const SizedBox(height: 20),

              Container(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 15,
                  bottom: 15,
                ),
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 220, 220, 220),
                ),
                child: Column(
                  children: [
                    for (var i = 0; i < 4; i++)
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              
                              ),
                            ),
                            SizedBox(height: 20),
                            tools.text(
                              s: "Developer Game",
                              size: 14,
                              weight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            SizedBox(height: 10),
                            tools.text(
                              s: "Nama Game",
                              size: 16,
                              weight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            SizedBox(height: 100),

                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context, 
                                    MaterialPageRoute(builder: (context) => TopUpPage())
                                  );
                                },
                                child: tools.text(
                                  s: "Top Up",
                                  size: 16,
                                  weight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: footerSection(context),
    );
  }
}
