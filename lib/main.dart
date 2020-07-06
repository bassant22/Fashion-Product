import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Product Details'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MediaQueryData mediaQueryData;
  int sizeId =2;
  int colorId=3;
  @override
  Widget build(BuildContext context) {
    mediaQueryData=MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -100,
              child: Image(image: AssetImage("assets/images/product.jpg"),height: mediaQueryData.size.height,),
            ),
            Positioned(
              top: 30,
                left: 30,
              child: Icon(Icons.arrow_back,color: Colors.black54,),
            ),
            Positioned(
              top: mediaQueryData.size.height/2.2,
              left: 0,
              right: 0,
              child: Container(
                height: mediaQueryData.size.height/1.5,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 35,),
                    Text(" Brown Coat ",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 22,color:Colors.black38),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "£199.00",
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.black38,
                              decoration: TextDecoration.lineThrough
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Text(
                          "£60",
                          style: TextStyle(
                              fontSize: 26
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text(
                  "SIZE",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300
                  )),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Container(
                              height: 35.0,
                              width: 50.0,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                    "XS",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color: sizeId==1 ?Color(0xffa69d90):Colors.white,
                                textColor: sizeId==1 ?Colors.white:Colors.black38,
                                onPressed: () {
                                  setState(() {
                                    sizeId=1;
                                  });
                                },
                              )
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                              height: 35.0,
                              width: 50.0,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                    "S",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color: sizeId==2 ?Color(0xffa69d90):Colors.white,
                                textColor: sizeId==2 ?Colors.white:Colors.black38,
                                onPressed: () {
                                  setState(() {
                                    sizeId=2;
                                  });
                                },
                              )
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                              height: 35.0,
                              width: 50.0,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                    "M",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color: sizeId==3 ?Color(0xffa69d90):Colors.white,
                                textColor: sizeId==3 ?Colors.white:Colors.black38,
                                onPressed: () {
                                  setState(() {
                                    sizeId=3;
                                  });
                                },
                              )
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                              height: 35.0,
                              width: 50.0,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                    "L",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color: sizeId==4?Color(0xffa69d90):Colors.white,
                                textColor: sizeId==4 ?Colors.white:Colors.black38,
                                onPressed: () { setState(() {
                                  sizeId=4;
                                });},
                              )
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                              height: 35.0,
                              width: 50.0,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                    "XL",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color:sizeId==5 ?Color(0xffa69d90):Colors.white,
                                textColor: sizeId==5 ?Colors.white:Colors.black38,
                                onPressed: () {
                                  setState(() {
                                    sizeId=5;
                                  });
                                },
                              )
                          ),
                        ]
                    ),
                    SizedBox(height: 25,),
                    Text(
                        "COLOUR",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                        )),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Container(
                              height: 35.0,
                              width: 90.0,
                              child: FlatButton(
                                child: Text(
                                    "red",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color: colorId==1 ?Color(0xffa69d90):Colors.white,
                                textColor: colorId==1 ?Colors.white:Colors.black38,

                                onPressed: () {
                                  setState(() {
                                    colorId=1;
                                  });
                                },
                              )
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                              height: 35.0,
                              width: 90.0,
                              child: FlatButton(
                                child: Text(
                                    "white",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color: colorId==2 ?Color(0xffa69d90):Colors.white,
                                textColor: colorId==2 ?Colors.white:Colors.black38,

                                onPressed: () {
                                  setState(() {
                                    colorId=2;
                                  });
                                },
                              )
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                              height: 35.0,
                              width: 90.0,
                              child: FlatButton(
                                child: Text(
                                    "beige",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300
                                    )
                                ),
                                color: colorId==3 ?Color(0xffa69d90):Colors.white,
                                textColor: colorId==3 ?Colors.white:Colors.black38,
                                onPressed: () {
                                  setState(() {
                                    colorId=3;
                                  });
                                },
                              )
                          ),
                        ]
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
