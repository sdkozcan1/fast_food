import 'package:fast_food/const.dart';
import 'package:fast_food/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Anasayfa(),
    );
  }
}

/* --------------------------------------ANASAYFA STATEFULL------------------------------------------- */

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> imgUrl = <String>[
    'assets/image/pizza.png',
    "assets/image/burger.png",
    "assets/image/hot-dog.png",
    "assets/image/french-fries.png",
    "assets/image/sushi.png",
    "assets/image/salad.png",
    "assets/image/ramen.png",
    "assets/image/drink.png"
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        /*  currentIndex: seciliSayfa,
        onTap: sayfaDegistir, */
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: "Notification"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.map),
                    Text("Turkey,Ankara"),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/pp.jpg"),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: basliksize, fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                              text: "Healthy", style: TextStyle(color: siyah)),
                          TextSpan(
                              text: " food \n",
                              style: TextStyle(color: turuncu)),
                          TextSpan(
                              text: "Healthy", style: TextStyle(color: siyah)),
                          TextSpan(
                              text: " life", style: TextStyle(color: turuncu)),
                        ]),
                  ),
                ),
                Center(
                  child: Container(
                    width: 400,
                    child: SearchBar(
                      leading: Icon(Icons.search),
                      hintText: "Search food...",
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Most populars",
                      style: TextStyle(
                          fontSize: altbaslikSize,
                          color: turuncu,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Container(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      itemCount: imgUrl.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              width: 50,
                              color: beyaz,
                              child: Center(
                                  child: Image.asset(
                                "${imgUrl[index]}",
                                width: 40,
                              ))),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                    )),
                Center(
                  child: Container(
                      width: 400,
                      height: 400,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            /*     width: 147,
                            height: 234, */
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            /*     width: 147,
                            height: 234, */
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            /*     width: 147,
                            height: 234, */
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            /*     width: 147,
                            height: 234, */
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            /*     width: 147,
                            height: 234, */
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            /*     width: 147,
                            height: 234, */
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: gri,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(Icons.favorite_border_outlined),
                                ),
                                Container(
                                    child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/image/pizza1.png"),
                                )),
                                Container(
                                  child: Text("Pizza wit..."),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star, color: turuncu),
                                      Text("4.8"),
                                      Text(
                                        "20 cm",
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "€14.00",
                                    style: TextStyle(
                                        color: turuncu,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                )
              ],
            )),
          )),
    );
  }
}
