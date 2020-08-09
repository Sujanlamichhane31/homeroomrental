import 'package:flutter/material.dart';
import 'package:homerentui/renttwo.dart';
import 'SizeConfig.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     // initialRoute: '/',
//     routes: {
//        '/': (context) => RentOne(),
//        '/second': (context) => Renttwo(),
//      },
      
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
      appBar: AppBar(
        title: new Text('Rent')
      ),
      body: Container(
        width: 200.0,
        height: 300.0,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              
              Expanded(
                  child: ListView(
                    children: <Widget>[
                      
                      SizedBox(child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, "/second");
                        },
                        child: _homeList('assets/im9.JPG', '\10', Colors.deepPurpleAccent),
                      ),
                        height: 300,
                        width: 300,
                      ),
                      
                    ],
                  ))
            ],
          ),
        )
      ),
    );
  }
}

  Widget _homeList(String asset, String rate, Color color) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(color: Colors.grey[300])
    ),
    child: Padding(padding: EdgeInsets.symmetric(
      horizontal: 10.0,
      vertical: 40.0
    ),
      child: Row(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(asset, fit: BoxFit.cover, height: 20.0, width: 20.0,),
              ),
              Positioned(
                  right: -5.0,
                  left: -5.0,
                  
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.favorite, color: Colors.white, size: 25.0,),
                        SizedBox(width: 15.0,),
                        Text("12.5K", style: TextStyle(color: Colors.white,
                        fontSize: 10.0),),
                      ],
                    ),),
                  ),
              ),
            ],
          ),
          SizedBox(width: 30.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(rate, style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),),
              SizedBox(height: 30.0,),
              Text("Charming Villa", style: TextStyle(color: Colors.grey,
              fontSize: 16.0,),
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[Text("3200 sq. ft", style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),),],
              ),
              SizedBox(height: 30.0,),
              Text("4BHK" , style: TextStyle(color: Colors.black, fontSize: 20.0),
              )
            ],
          )
        ],
      ),
    ),
  );
}
