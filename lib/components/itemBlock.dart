import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new InkWell(
              onTap: () {

              },
              splashColor: Colors.redAccent,
              child: new Card(
                child: new Row(
                  children: <Widget>[
                    ItemImage(),
                    new Text("   "),
                    new Flexible(
                        child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // crossAxisAlignment: CrossAxisAlignment.start,

                        new Text("Bicycle 2012",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              // fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 25.0,
                            )),
                        new Text("   "),
                        new Text("Bicycle to use in touring various places ",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              fontSize: 20.0,
                            )),
                        new Text(" "),
                        new Container(
                          child: Row(
                            children: <Widget>[
                              new Icon(Icons.location_on),
                              new Text("Dhahran/KFUPM",
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 20.0,
                                  )),
                              new Icon(Icons.monetization_on),
                              new Text("5SR/day",
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 20.0,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
    //container
    //scaffold
  } //widget
}

class ItemImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var assetsImage = new AssetImage('assets/bicycle.jpg');
    var image = new Image(
      image: assetsImage,
      width: 80.0,
      height: 80.0,
    );
    return Container(
      child: image,
    );
  }
}
