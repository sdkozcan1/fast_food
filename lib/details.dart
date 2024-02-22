import 'package:fast_food/const.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<String> imgUrl = <String>[
    "assets/image/taco-3291599_1280.png",
    "assets/image/taco-3291599_1280.png",
    "assets/image/taco-3291599_1280.png",
    "assets/image/taco-3291599_1280.png",
    "assets/image/taco-3291599_1280.png"
  ];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("<"),
                  Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: turuncu),
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
              Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/image/pizzapeynir.png"),
                      radius: 150,
                    ),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'mixed pizza ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text:
                                  '\nDört çeşit peynir: Mozzarella, Gorgonzola ve bölgeye bağlı olarak iki çeşit peynir',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.star_border),
                          Text("4.6"),
                          Text("20 cm")
                        ],
                      ),
                    ),
                    Container(
                        height: 138,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.all(8),
                          itemCount: imgUrl.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 138,
                                  color: beyaz,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50.0),
                                        child: Icon(
                                            Icons.favorite_border_outlined),
                                      ),
                                      Center(
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/image/pizzapeynir.png"),
                                          radius: 40,
                                        ),
                                        /*  Image.asset(
                                        "${imgUrl[index]}",
                                        width: 130,
                                      ) */
                                      ),
                                    ],
                                  )),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
