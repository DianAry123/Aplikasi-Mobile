import 'package:flutter/material.dart';

class Pagebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
          //leading: Icon(Icons.favorite),
          backgroundColor: Colors.blueGrey,
          title: new Center(
            child: new Text("About Library"),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/buku.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              "Hallo, saya Komang Dian Ary Kristiadi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                height: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Perpustakaan Online yang saya beri nama Vidya Sarasvati ini semoga dapat berguna di kalangan masyarakat suatu saat nanti. Karena membaca adalah salah satu jendela dunia, maka mari budayakan membaca. Stay Safe, tetap di rumah aja !",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                height: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
