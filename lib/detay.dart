import 'package:flutter/material.dart';
import 'package:modaapp/constants.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imgPath;
  Detay({this.imgPath, super.key});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  Constants constants = Constants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Hero(
          tag: widget.imgPath,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          left: 15,
          child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(constants.dressImage),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(constants.laminatedText,
                                style: TextStyle(
                                    fontFamily: constants.montserratText,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 4),
                            Row(children: [
                              Text(constants.louisVuittonText,
                                  style: TextStyle(
                                      fontFamily: constants.montserratText,
                                      fontSize: 14,
                                      color: Colors.grey)),
                              //Image.asset('assets/images/louisvuitton.jpg',fit: BoxFit.cover)
                            ]),
                            const SizedBox(height: 8),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 250,
                              child: Text(constants.detailsText,
                                  style: TextStyle(
                                      fontFamily: constants.montserratText,
                                      fontSize: 12,
                                      color: Colors.grey)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 2, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(constants.priceText,
                              style: TextStyle(
                                  fontFamily: constants.montserratText,
                                  fontSize: 26,
                                  color: Colors.black)),
                          FloatingActionButton(
                            onPressed: (() {}),
                            backgroundColor: Colors.brown,
                            child: const Center(
                                child: Icon(Icons.arrow_forward_ios)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2,
          left: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              width: 150,
              height: 30,
              color: Colors.black.withOpacity(0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(constants.laminatedText,
                      style: TextStyle(
                          fontFamily: constants.montserratText,
                          fontSize: 16,
                          color: Colors.white)),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
