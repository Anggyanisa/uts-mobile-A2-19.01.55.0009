import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _valFriends;
  TextEditingController inputbayar = TextEditingController();
  String namasepatu = "";
  int harga = 0;
  double diskon = 0;
  double hargadiskon = 0;
  double totalbayar = 0;
  double bayar = 0;
  double kembali = 0;

  List _myFriends = [
    "Adi01",
    "Adi02",
    "Ree01",
    "Ree02",
    "Nike01",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(backgroundColor: const Color(0xFF4169E1), title: Logo()),
        //leading: Icon(Icons.men

        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 800,
                  //parent dari container biru tua
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: const Color(0xFF4169E1),
                        //ini container biru
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: const <Widget>[
                              //get nama SKPD from shared preference
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    "PENJUALAN SEPATU",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //isi dari container
                      Positioned(
                        top: 75,
                        child: Container(
                          height: 500,
                          width: width,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 470,
                                width: width - 20,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 7),
                                    )
                                  ],
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(7)),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Text(
                                            "Kode Sepatu",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          Expanded(
                                              child: Container(
                                            height: 40,
                                            color: Colors.white,
                                            margin: EdgeInsets.all(10),
                                            child: DropdownButton(
                                              hint: const Text(
                                                  "Pilih kode Sepatu"),
                                              value: _valFriends,
                                              items: _myFriends.map((value) {
                                                return DropdownMenuItem(
                                                  child: Text(value),
                                                  value: value,
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _valFriends =
                                                      value.toString();
                                                  //Untuk memberitahu _valFriends bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                                                  if (_valFriends == "Adi01") {
                                                    namasepatu =
                                                        "Adidas Tennis";
                                                    harga = 500000;
                                                    diskon = 0.25;
                                                    hargadiskon =
                                                        500000 * diskon;
                                                    totalbayar =
                                                        harga - hargadiskon;
                                                    setState(() {});
                                                  } else if (_valFriends ==
                                                      "Adi02") {
                                                    namasepatu =
                                                        "Adidas Badminton";
                                                    harga = 450000;
                                                    diskon = 0.30;
                                                    hargadiskon =
                                                        harga * diskon;
                                                    totalbayar =
                                                        harga - hargadiskon;
                                                    setState(() {});
                                                  } else if (_valFriends ==
                                                      "Ree01") {
                                                    namasepatu =
                                                        "Reebok Tennis";
                                                    harga = 750000;
                                                    diskon = 0.10;
                                                    hargadiskon =
                                                        harga * diskon;
                                                    totalbayar =
                                                        harga - hargadiskon;
                                                    setState(() {});
                                                  } else if (_valFriends ==
                                                      "Ree02") {
                                                    namasepatu =
                                                        "Reebok Badminton";
                                                    harga = 600000;
                                                    diskon = 0.15;
                                                    hargadiskon =
                                                        harga * diskon;
                                                    totalbayar =
                                                        harga - hargadiskon;
                                                    setState(() {});
                                                  } else if (_valFriends ==
                                                      "Nike01") {
                                                    namasepatu = "Nike Tennis";
                                                    harga = 350000;
                                                    diskon = 0.50;
                                                    hargadiskon =
                                                        harga * diskon;
                                                    totalbayar =
                                                        harga - hargadiskon;
                                                    setState(() {});
                                                  }
                                                });
                                              },
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      margin: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Expanded(
                                              child: Text(
                                            "Nama Sepatu",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          // ignore: prefer_const_constructors
                                          Expanded(
                                              child: Text(
                                            namasepatu,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      margin: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Expanded(
                                              child: Text(
                                            "Harga",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          // ignore: prefer_const_constructors
                                          Expanded(
                                              child: Text(
                                            "Rp." + harga.toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      margin: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Expanded(
                                              child: Text(
                                            "Diskon",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          // ignore: prefer_const_constructors
                                          Expanded(
                                              child: Text(
                                            diskon.toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      margin: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Expanded(
                                              child: Text(
                                            "Total Bayar",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          // ignore: prefer_const_constructors
                                          Expanded(
                                              child: Text(
                                            "Rp." + totalbayar.toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      margin: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Expanded(
                                              child: Text(
                                            "Bayar",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          // ignore: prefer_const_constructors
                                          Expanded(
                                            child: TextField(
                                              controller: inputbayar,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                  isDense: true,
                                                  hintText: 'input bayar',
                                                  hintStyle:
                                                      TextStyle(fontSize: 12)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          String hasilinput =
                                              inputbayar.text.toString();
                                          bayar = double.parse(hasilinput);

                                          if (bayar > 0) {
                                            kembali = bayar - totalbayar;
                                            setState(() {});
                                          }
                                        },
                                        child: Container(
                                          child: const Text("Hitung"),
                                        )),
                                    Container(
                                      height: 50,
                                      margin: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Expanded(
                                              child: Text(
                                            "Kembali",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          // ignore: prefer_const_constructors
                                          Expanded(
                                              child: Text(
                                            "Rp." + kembali.toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 63,
                          child: Container(
                            margin: EdgeInsets.only(left: 95),
                            width: 170,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0XFF87CEEB)),
                            child: const Text(
                              "Toko Sepatu Anggyanisa",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
      children: <Widget>[
        Image.asset(
          "assets/nike.png",
          width: 200,
          height: 100,
        ),
        const Text(
          "19.01.55.0009/A2",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )

        // The size box provides an immediate spacing between the widgets
      ],
    );
  }
}
