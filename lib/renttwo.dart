import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints){
      return OrientationBuilder(builder: (context, orientation){
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: Renttwo(),
        );
      },
      );
    },
    );
  }
}


class Renttwo extends StatefulWidget {
  @override
  _RenttwoState createState() => _RenttwoState();
}

class _RenttwoState extends State<Renttwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: 3 * SizeConfig.widthMultiplier
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 5 * SizeConfig.heightMultiplier,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40 * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/im6.JPG"))
              ),
            ),
            SizedBox(height: 2 * SizeConfig.heightMultiplier,),
            Text("Meeting Place", style: TextStyle(
                color: Colors.black,
                fontSize: 3 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 1 * SizeConfig.heightMultiplier,),
            Text("360 Street, NY", style: TextStyle(
                color: Colors.grey,
                fontSize: 2.1 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 1 * SizeConfig.heightMultiplier,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", style: TextStyle(
              color: Colors.grey,
              fontSize: 2.1 * SizeConfig.textMultiplier,
            ),),
            SizedBox(height: 1 * SizeConfig.heightMultiplier,),
            Text("Facilities", style: TextStyle(
                color: Colors.black,
                fontSize: 2.5 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 2 * SizeConfig.heightMultiplier,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _facilityCard("assets/im1.JPG", "Wifi"),
                _facilityCard("assets/im2.JPG", "Heater"),
                _facilityCard("assets/im3.JPG", "Food"),
                _facilityCard("assets/im4.JPG", "Gym"),
              ],
            ),
            SizedBox(height: 4 * SizeConfig.heightMultiplier,),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(
                        vertical: 2 * SizeConfig.heightMultiplier,
                        horizontal: 4 * SizeConfig.widthMultiplier
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.remove, color: Colors.grey, size: 4 * SizeConfig.imageSizeMultiplier,),
                        SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                        Text("1H", style: TextStyle(
                            color: Colors.black,
                            fontSize: 2 * SizeConfig.textMultiplier
                        ),),
                        SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                        Icon(Icons.add, color: Colors.red, size: 4 * SizeConfig.imageSizeMultiplier,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          vertical: 2 * SizeConfig.heightMultiplier,
                          horizontal: 4 * SizeConfig.widthMultiplier
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Add", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 2 * SizeConfig.textMultiplier
                          ),),
                          Text("\$15.00", style: TextStyle(
                              color: Colors.white,
                              fontSize: 2 * SizeConfig.textMultiplier
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
  
  
    );
  }


  Widget _facilityCard(String asset, String name) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black)
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(
            vertical: 1 * SizeConfig.heightMultiplier,
            horizontal: 4 * SizeConfig.widthMultiplier
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(asset, height: 10 * SizeConfig.imageSizeMultiplier, width: 10 * SizeConfig.imageSizeMultiplier,),
            SizedBox(height: 1 * SizeConfig.heightMultiplier,),
            Text(name, style: TextStyle(
                fontSize: 1.4 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w600
            ),)
          ],
        ),
      ),
    );
  }
}


