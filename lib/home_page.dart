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
    "Haas",
    "Williams",
    "Alpha Tauri"
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
    "Pierre Gasly"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.withOpacity(0.9),
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          child: Image.asset("assets/logo.png"),
        ),
        title: Text("F1 ADDICT"),
        actions: [
          Container(
            margin: EdgeInsets.all(20),
            child: Icon(Icons.logout),
          )
        ],
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
                              for (var i = 0; i < f1Teams.length; i++)
                                (Container(
                                  margin: EdgeInsets.all(10),
                                  child: Card(
                                    color: Color.fromARGB(255, 50, 161, 108),
                                    child: Text(f1Teams[i]),
                                  ),
                                ))
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
                              for (var i = 0; i < f1Drivers.length; i++)
                                (F1Teams(i)),
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

  Container F1Teams(
    int i,
  ) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        child: Text(f1Drivers[i]),
      ),
    );
  }
}
