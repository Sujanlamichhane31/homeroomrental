import 'package:flutter/material.dart';
import 'package:homerentui/renttwo.dart';
import 'SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: 'Hotel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: RentOne(),
    );
  }
}

class RentOne extends StatefulWidget {
  @override
  _RentOneState createState() => _RentOneState();
}

class _RentOneState extends State<RentOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text('Rent')),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondPage()),
                            );
                          },
                          child: _homeList(
                              'assets/im9.JPG', '\10', Colors.deepPurpleAccent),
                        ),
                        height: MediaQuery.of(context).size.height / 4.25,
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondPage()),
                            );
                          },
                          child:
                              _homeList('assets/im4.JPG', '\10', Colors.pink),
                        ),
                        height: MediaQuery.of(context).size.height / 4.25,
                        width: 100,
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}

Widget _homeList(String asset, String rate, Color color) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey[300])),
    child: Padding(
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  asset,
                  fit: BoxFit.cover,
                  height: 100.0,
                  width: 150.0,
                ),
              ),
              Positioned(
                top: -25.0,
                right: -15.0,
                left: -15.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(7.0)),
                  child: SizedBox(
                    width: 25.0,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 22.0,
                        ),
                        Text(
                          "12.5K",
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 30.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                rate,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "Charming Villa",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "3200 sq. ft",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Text(
                "4BHK",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              )
            ],
          )
        ],
      ),
    ),
  );
}
