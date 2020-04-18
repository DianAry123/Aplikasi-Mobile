import 'package:flutter/material.dart';
import 'package:project_uts/pagebook.dart';
import 'detail_produk.dart';

class Window extends StatelessWidget {
  Window({
  @required this.namaLengkap});

  final String namaLengkap;
  
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.lightBlueAccent,
              leading: Icon(Icons.person),
              title: new Center(
                child: new Text("Hai $namaLengkap !"),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.local_library),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => Pagebook()));
                }),
          ],
        ),
        body: ListView(shrinkWrap: true, children: <Widget>[
          Card(
            color: Colors.white,
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: Container(
                height: 200.0,
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => WebViewInFlutter(),
                    ));
                  },
                  child: ProductBox(
                    nama: "Matahari - Tere Liye",
                    description:
                        "Raib, Ali, dan Seli dirundung duka atas tewasnya Ily, sahabat mereka, pada pertarungan di Klan Matahari.",
                    image: "Matahari.jpg",
                  ),
                )),
          ),
          Card(
              color: Colors.white,
              margin: EdgeInsets.all(10.0),
              elevation: 10.0,
              child: Container(
                  height: 200.0,
                  child: InkWell(
                    splashColor: Colors.blue,
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => WebViewInFlutter2(),
                      ));
                    },
                    child: ProductBox(
                      nama:
                          "Daun Yang Jatuh Tidak Akan Pernah Membenci Angin - Tere Liye",
                      description:
                          "Kehidupan mereka berubah setelah bertemu dengan seorang pria bernama Danar. Danar adalah seorang karyawan yang juga penulis buku anak-anak.",
                      image: "daun.jpg",
                    ),
                  ))),
          Card(
              color: Colors.white,
              margin: EdgeInsets.all(10.0),
              elevation: 10.0,
              child: Container(
                  height: 200.0,
                  child: InkWell(
                    splashColor: Colors.blue,
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => WebViewInFlutter3(),
                      ));
                    },
                    child: ProductBox(
                      nama: "Negeri di Ujung Tanduk",
                      description:
                          "Waktu yang dinanti pun tiba. Thomas digiring menuju kapal New Panamax dengan penjagaan ketat orang-orang bersenjata.",
                      image: "negeri.jpg",
                    ),
                  ))),
          Card(
              color: Colors.white,
              margin: EdgeInsets.all(10.0),
              elevation: 10.0,
              child: Container(
                  height: 200.0,
                  child: InkWell(
                    splashColor: Colors.blue,
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => WebViewInFlutter4(),
                      ));
                    },
                    child: ProductBox(
                      nama: "Sepotong Hati yang Baru - Tere Liye",
                      description:
                          " Pernikahanku dan Alysa tinggal menghitung hari. Persis lima hari sebelum kami menikah, Alysa bertemu dengan pria gagah. Pertemuan mereka berujung buruk pada hubungan kami.",
                      image: "Sepotong.jpg",
                    ),
                  ))),
        ]));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.namaLengkap, this.nama, this.image, this.description})
      : super(key: key);

  final String nama;
  final String image;
  final String description;
  final String namaLengkap;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/" + image,
                width: 150,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('nama:$nama',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description,
                              style: TextStyle(
                                fontSize: 13.0,
                              )),
                        ],
                      )))
            ])));
  }
}
