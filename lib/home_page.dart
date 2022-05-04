import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var f1Teams = [
    "Mercedes",
    "Red Bull Racing",
    "Ferrari",
    "Mclaren",
    "Aston Martin",
    "Alpine F1 Team",
    "Alfa Romeo",
    "Alpha Tauri",
    "Haas",
    "Williams"
  ];
  var f1Drivers = [
    "Charles Leclerc",
    "Max Verstappen",
    "Carlos Sainz",
    "George Russel",
    "Lando Norris",
    "Lewis Hamilton",
    "Sergio Perez",
    "Valteri Bottas",
    "Esteban Ocon",
    "Pierre Gasly",
    "Fernando Alonso"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(94, 168, 161, 161),
        title: Row(children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Text(
              "F1 ADDICT",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ]),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        // colorFilter: ColorFilter.mode(
                        //     Colors.black.withOpacity(0.2),
                        //     BlendMode.dstATop),
                        image: AssetImage('assets/F1car.png')),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  //padding: EdgeInsets.all(20),
                  child: Card(
                    elevation: 30,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Text("FI TEAMS"),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              F1Teams(0, Color(0xFF03BFB5),
                                  "assets/Mercedes F1 Car.jpg"), //mercedes
                              F1Teams(1, Color(0xFF1B2B5A),
                                  "assets/Redbull F1 Car.jpg"), //rebull
                              F1Teams(2, Color(0xFFed1c24),
                                  "assets/Ferrari F1 Car.jpg"), //Ferrari
                              F1Teams(3, Color(0xFFFF8000),
                                  "assets/Mclaren F1 Car.jpg"), //mclaren
                              F1Teams(4, Color(0xFF00352F),
                                  "assets/Astonmartin F1 Car.jpg"), //astonmartin
                              F1Teams(5, Color(0xFF005BA9),
                                  "assets/Alpine F1 Car.jpg"), //alpine
                              F1Teams(6, Color(0xFF981E32),
                                  "assets/Alfaromeo F1 Car.jpg"), //alfa romeo
                              F1Teams(7, Color(0xFF00293F),
                                  "assets/Alphatauri F1 Car.jpg"), //alpha tauri
                              F1Teams(8, Color(0xFFed1a3b),
                                  "assets/Haas F1 Car.jpg"), //haas
                              F1Teams(9, Color(0xFF00A3E0),
                                  "assets/Williams F1 Car.jpg"), //williams
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Text("F1 DRIVERS"),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: ListView(
                            children: [
                              F1Drivers(0, Color(0xFFed1c24),
                                  "assets/driver/leclerc.png"), //leclerc
                              F1Drivers(1, Color(0xFF1B2B5A),
                                  "assets/driver/Max.jpg"), //Max
                              F1Drivers(2, Color(0xFFed1c24),
                                  "assets/driver/carlos.jpg"), //Sainz
                              F1Drivers(3, Color(0xFF03BFB5),
                                  "assets/driver/russel.jpg"), //russel
                              F1Drivers(4, Color(0xFFFF8000),
                                  "assets/driver/lando.jpg"), //norris
                              F1Drivers(5, Color(0xFF03BFB5),
                                  "assets/driver/lewis.jpg"), //hamilton
                              F1Drivers(6, Color(0xFF1B2B5A),
                                  "assets/driver/perez.png"), //perez
                              F1Drivers(7, Color(0xFF981E32),
                                  "assets/driver/bottas.jpg"), //bottas
                              F1Drivers(8, Color(0xFF005BA9),
                                  "assets/driver/ocon.jpg"), //ocon
                              F1Drivers(9, Color(0xFF00293F),
                                  "assets/driver/gasly.jpg"), //Gasly
                              F1Drivers(10, Color(0xFF005BA9),
                                  "assets/driver/alonso.jpg"), //alonso
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container F1Teams(int i, Color livery, var teamsImg) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(children: [
          Image(
            image: AssetImage(teamsImg),
            fit: BoxFit.contain,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              f1Teams[i],
              style: TextStyle(color: Colors.white, fontSize: 35, shadows: [
                Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(15, 15),
                    blurRadius: 15)
              ]),
            ),
          ),
        ]),
        color: livery,
      ),
    );
  }

  SizedBox F1Drivers(int i, Color livery, var drivers) {
    return SizedBox(
      height: 50,
      child: Card(
        elevation: 10,
        child: Row(children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Image(
                image: AssetImage(drivers),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Text(
              f1Drivers[i],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
        color: livery,
      ),
    );
  }
}
