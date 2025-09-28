import 'package:flutter/material.dart';
import 'package:posttest2/tools.dart';
import 'package:posttest2/home.dart';

class TopUpPage extends StatelessWidget {
  Tools tools = Tools();

  Widget gameInformation(){
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  tools.text(
                    s: "Developer Game",
                    size: 14,
                    weight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  tools.text(
                    s: "Nama Game",
                    size: 16,
                    weight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(width: 50)
            ]
          ),
          SizedBox(height: 30),
          tools.text(
            s: "Informasi Game",
            size: 16,
            weight: FontWeight.bold,
            color: Colors.black,
          ),
          SizedBox(height: 200)
        ]
      )
    );
  }

  Widget inputDataInGame(){
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          tools.text(
            s: "Masukkan",
            size: 25,
            weight: FontWeight.bold,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'ID Akun',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
                
              SizedBox(width: 10),

              Container(
                width: 140,
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'ID Server',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ]
          ),
        ]
      ) 
    );
  }

  Widget paymentMethod(){
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          tools.text(
            s: "Pilih Metode Pembayaran",
            size: 25,
            weight: FontWeight.bold,
            color: Colors.black,
          ),
          SizedBox(height: 10),
          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              for (var i = 0; i < 6; i++)
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                    image: DecorationImage(
                      image: AssetImage('assets/image.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ), 
                )
            ]
          )
        ]
      ) 
    );
  }

  Widget inputItem(){
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          tools.text(
            s: "Pilih Item",
            size: 25,
            weight: FontWeight.bold,
            color: Colors.black,
          ),
          SizedBox(height: 10),
          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              for (var i = 0; i < 6; i++)
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      tools.text(
                        s: "Item ${i+1}",
                        size: 14,
                        weight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      SizedBox(height: 10),
                      tools.text(
                        s: "Harga",
                        size: 12,
                        weight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
            ]
          )
        ]
      )
    );
  }

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
                  MaterialPageRoute(builder: (context) => HomePage())
                );
              }, 
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
            tools.text(
              s: "Top Up",
              size: 20,
              weight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(width: 24), // Placeholder for alignment
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          gameInformation(),
          SizedBox(height: 20),
          inputDataInGame(),
          SizedBox(height: 20),
          inputItem(),
          SizedBox(height: 20),
          paymentMethod(),
          
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 40,
            child: OutlinedButton(
              onPressed: () {},
              child: tools.text(
                s: "Bayar",
                size: 16,
                weight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 40),
        ]
      ),
    );
  }
}
