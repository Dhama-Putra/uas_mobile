import 'package:flutter/material.dart';
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(title: Text("List Anjing")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener  berupa klik 1x
              onTap: () {
                //navigator.push  untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "HUSKY",
                    description: "Siberian Husky termasuk dalam jenis anjing ras berukuran sedang dan berbulu tebal. Anjing ras ini tidak ganas, bahkan terlalu baik kepada orang asing yang bukan pemiliknya. Ras ini sekilas mirip serigala, mungkin juga diperkirakan terjadi karena hasil persilangan alam.",
                    price: 3200000,
                    image: "husky.jpg",
                    star: 5,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "HUSKY",
                  description: "Tipe anjing penyayang dan bulu lebat",
                  price: 3200000,
                  image: "husky.jpg",
                  star: 5),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "SHIH-TZU",
                      description: "Anjing Shih Tzu merupakan anjing kecil yang memiliki karakter bersemangat, menyenangkan, berani, pintar, bersahabat dan merupakan anjing penjaga yang sangat waspada.",
                      price: 1500000,
                      image: "shih-tzu.jpg",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "SHIH-TZU",
                  description: "Anjing yang lucu dan bulu tebal",
                  price: 1500000,
                  image: "shih-tzu.jpg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "MINI POM",
                    description: "Anjing Pomeranian memiliki sifat yang lincah, berani, protektif, loyal kepada pemiliknya, dan dapat menggonggong dengan tidak terkendali. Anjing ini memang merupakan salah satu jenis yang riuh atau bising, terlebih bila mencurigai sesuatu.",
                    price: 1300000,
                    image: "mini pom.jpg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                  name: "MINI POM",
                  description: "Anjing yang lucu dan bulu tebal",
                  price: 1300000,
                  image: "mini pom.jpg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "GERMAN SHEPHERD",
                    description: "Anjing German Shepherd bisa rukun dan sabar terhadap anak-anak dan hewan peliharaan lainnya jika dibesarkan bersama mereka, tetapi sesuai dengan naluri menjaga mereka, GSD cenderung curiga terhadap orang asing. Trah ini dianggap sangat cerdas dan mudah dilatih.",
                    price: 6000000,
                    image: "german.jpg",
                    star: 3,
                  ),
                ));
              },
              child: ProductBox(
                  name: "GERMAN SHEPHERD",
                  description: "Anjing penjaga rumah bulu lebat",
                  price: 6000000,
                  image: "german.jpg",
                  star: 3),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "PITBUL",
                    description: "American Pitbull Terrier adalah anjing yang sangat kuat, bersemangat dan mempunyai kesetiaan yang tinggi terhadap tuannya. Anjing Pitbull mempunyai tubuh yang berotot, kekar, dan sangat gesit untuk ukuran tubuh sepertinya.",
                    price: 5000000,
                    image: "pitbull.jpg",
                    star: 3,
                  ),
                ));
              },
              child: ProductBox(
                name: "PITBUL",
                description: "Anjing penjaga rumah galak dan bulu pendek",
                price: 5000000,
                image: "pitbull.jpg",
                star: 3,
              ),
            ),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(10),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}