import 'package:flutter/material.dart';
import 'tools.dart';
import 'auth/login.dart';
import 'history.dart';
import 'home.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final Tools tools = Tools();

  Widget topSection() {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset('assets/image.jpg').image,
            ),

            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
          ),
        ),

        Positioned(
          bottom: -75,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/image.jpg').image,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget profileSection(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child: tools.text(
              s: "User Name",
              size: 24,
              weight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: tools.text(
                      s: "Email",
                      size: 16,
                      weight: FontWeight.normal,
                      color: Colors.black,
                    )
                  )
                ),

                SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: tools.text(
                      s: "Telepon",
                      size: 16,
                      weight: FontWeight.normal,
                      color: Colors.black,
                    )
                  )
                ),

                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: tools.text(
                      s: "Negara",
                      size: 16,
                      weight: FontWeight.normal,
                      color: Colors.black,
                    )
                  )
                ),

                SizedBox(height: 70),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: tools.text(
                      s: "Login",
                      size: 20,
                      weight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                )
              ],
            ),
          )
        ],
      )
    );
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            topSection(),
            profileSection(context),            
          ]
        ),
      ),
      bottomNavigationBar: footerSection(context),
    );
  }

}