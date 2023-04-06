import 'package:flutter/material.dart';
import 'package:modaapp/constants.dart';
import 'package:modaapp/detay.dart';

void main() {
  runApp(const ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  Constants constants = Constants();
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              color: Colors.grey,
              onPressed: () {},
              icon: const Icon(Icons.camera_alt)),
        ],
        title: Text(
          constants.discoveryText,
          style: TextStyle(
              color: Colors.black,
              fontFamily: constants.montserratText,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          ColoredBox(
            color: Colors.white,
            child: SizedBox(
              width: double.infinity,
              height: 140,
              child: ListView(
                padding: const EdgeInsets.all(15),
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani(constants.model1, constants.chanellogo),
                  const SizedBox(width: 30),
                  listeElemani(constants.model2, constants.louisvuitton),
                  const SizedBox(width: 30),
                  listeElemani(constants.model3, constants.chloelogo),
                  const SizedBox(width: 30),
                  listeElemani(constants.model1, constants.chanellogo),
                  const SizedBox(width: 30),
                  listeElemani(constants.model2, constants.louisvuitton),
                  const SizedBox(width: 30),
                  listeElemani(constants.model3, constants.chloelogo),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              elevation: 4,
              child: Container(
                height: 480,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                           
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(38),
                              image: DecorationImage(
                                  image: AssetImage(constants.model1),
                                  fit: BoxFit.cover),
                            ),
                          ),
                         const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                "Daisy",
                                textAlign: TextAlign.end,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                constants.timeText,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: constants.montserratText,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          const SizedBox(width: 150),
                          const Expanded(child: Icon(Icons.more_vert))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        constants.mainText,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: constants.montserratText,
                            fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 230,
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: (() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: ((context) =>
                                          Detay(imgPath: constants.modelgrid1)),
                                    ),
                                  );
                                }),
                                child: Hero(
                                  tag: constants.modelgrid1,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        constants.modelgrid1,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ColoredBox(
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: ((context) => Detay(
                                                  imgPath:
                                                      constants.modelgrid2)),
                                            ),
                                          );
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Hero(
                                            tag: constants.modelgrid2,
                                            child: Image.asset(
                                              constants.modelgrid2,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: ((context) => Detay(
                                                  imgPath:
                                                      constants.modelgrid3)),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: constants.modelgrid3,
                                          child: ClipRRect(
                                            //clipBehavior: Clip.hardEdge,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              constants.modelgrid3,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Text(
                              constants.louisVuittonSignText,
                              style: TextStyle(
                                  fontFamily: constants.montserratText,
                                  fontSize: 9,
                                  color: Colors.brown.shade800),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Text(
                              constants.ChloeSignText,
                              style: TextStyle(
                                  fontFamily: constants.montserratText,
                                  fontSize: 9,
                                  color: Colors.brown.shade800),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.reply_all_outlined,
                                color: Colors.brown.withOpacity(0.4),
                                size: 25,
                              ),
                              Text(
                                "1.7k",
                                style: TextStyle(
                                    fontFamily: constants.montserratText,
                                    color: Colors.brown.withOpacity(0.4)),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Row(children: [
                            Icon(
                              Icons.comment,
                              color: Colors.brown.withOpacity(0.4),
                              size: 25,
                            ),
                            Text(
                              "325",
                              style: TextStyle(
                                  fontFamily: constants.montserratText,
                                  color: Colors.brown.withOpacity(0.4)),
                            ),
                          ]),
                          const SizedBox(width: 120),
                          Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 25,
                              ),
                              Text(
                                "2.3",
                                style: TextStyle(
                                    fontFamily: constants.montserratText,
                                    color: Colors.brown.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              alignment: Alignment.center,
              width: 75,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(15)),
              child: const Text(
                "Follow",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
