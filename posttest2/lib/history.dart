import 'package:flutter/material.dart';
import 'home.dart';
import 'tools.dart';
import 'profile.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

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
            s: "Riwayat Transaksi",
            size: 20,
            weight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ),
      body: Center(
        child: Container(
          width: 340,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tools.text(
                s: "Tidak ada riwayat transaksi",
                size: 16,
                weight: FontWeight.normal,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: footerSection(context),
    );
  }
}
