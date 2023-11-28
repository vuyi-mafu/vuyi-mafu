import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:more_container_practice/zim-newspapers.dart';
import 'package:more_container_practice/angola-newspapers.dart';
import 'package:more_container_practice/botswana-newspapers.dart';
import 'package:more_container_practice/comoros-newspapers.dart';
import 'package:more_container_practice/drc-newspapers.dart';
import 'package:more_container_practice/eswatini-newspapers.dart';
import 'package:more_container_practice/lesotho-newspapers.dart';
import 'package:more_container_practice/madagascar-newspapers.dart';
import 'package:more_container_practice/malawi-newspapers.dart';
import 'package:more_container_practice/mauritius-newspapers.dart';
import 'package:more_container_practice/mozambique-newspapers.dart';
import 'package:more_container_practice/namibia-newspapers.dart';
import 'package:more_container_practice/seychelles-newspapers.dart';
import 'package:more_container_practice/southafrica-newspapers.dart';
import 'package:more_container_practice/tanzania-newspapers.dart';
import 'package:more_container_practice/zambia-newspapers.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SADC NEWSPAPERS',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    Widget horizontalList1 = Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AngolaNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/angola-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Angola",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BotswanaNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/botswana-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Botswana"),
                  ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ComorosNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/comoros-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 160),
                      Text("Comoros",
                          style: TextStyle(color: Colors.white)),                  ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DrcNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("flags/drc-flag.png"),
                    fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),
                  child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("DRC"),
                  ],
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Widget horizontalList2 = Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EswatiniNewspapers();
                  },
                  ),
                  );
                },
                child: Container(

                  width: 200,
                  decoration: BoxDecoration(

                      image: const DecorationImage(image: AssetImage("flags/eswatini-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Eswatini",
                        style: TextStyle(color: Colors.white)),                ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LesothoNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/lesotho-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Lesotho"),
                  ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MadagascarNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/madagascar-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Madagascar",
                        style: TextStyle(color: Colors.white)),                ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MalawiNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/malawi-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Malawi"),
                  ],
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Widget horizontalList3 = Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MauritiusNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/mauritius-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Mauritius",
                        style: TextStyle(color: Colors.white)),                ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MozambiqueNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/mozambique-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Mozambique"),
                  ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NamibiaNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/namibia-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Namibia",
                        style: TextStyle(color: Colors.white)),                ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SeychellesNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/seychelles-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Seychelles"),
                  ],
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Widget horizontalList4 = Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SouthAfricaNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/southafrica-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),  child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("South Africa",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TanzaniaNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/tanzania-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Tanzania"),
                  ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ZambiaNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/zambia-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),                child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Zambia",
                        style: TextStyle(color: Colors.white)),                ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ZimNewspapers();
                  },
                  ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("flags/zimbabwe-flag.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey

                  ), child: const Column(
                  children: [
                    SizedBox(height: 160),
                    Text("Zimbabwe",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      // backgroundColor: Colors.lightGreen,
      backgroundColor: Colors.blueGrey,

      // backgroundColor: Colors.white70,
      // backgroundColor: Colors.redAccent,
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Center(child: Text("SADC NEWS")),
      ),
      body:
      Center(
        child: ListView(

          scrollDirection: Axis.vertical,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text(
                  "ANGOLA TO DRC",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2,
                    // fontStyle: FontStyle.italic,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
              )),
            ),

            horizontalList1,
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text(
                  "ESWATINI TO MALAWI",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ))),
            ),
            horizontalList2,
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text(
                  "MAURITIUS TO SEYCHELLES",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ))),
            ),
            horizontalList3,
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text(
                  "SOUTH AFRICA TO ZIMBABWE",
                style: TextStyle(
                  color: Colors.black,
                  // color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ))),
            ),
            horizontalList4,
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


