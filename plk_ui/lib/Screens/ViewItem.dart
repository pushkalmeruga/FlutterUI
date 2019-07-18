import 'package:flutter/material.dart';
import 'package:plk_ui/Models/Item.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:plk_ui/Screens/Drawer.dart';

class ViewItemWidget extends StatefulWidget {
  ViewItemWidget({Key key, this.item}) : super(key: key);

  final Item item;

  @override
  _ViewItemWidgetState createState() => _ViewItemWidgetState();
}

class _ViewItemWidgetState extends State<ViewItemWidget> {
  @override
  Widget build(BuildContext context) {
    print(widget.item.partName);
    return new Scaffold(
        appBar: AppBar(
          title: Text("Buy Item"),
          elevation: 3.0,
        ),
        drawer: DrawerWidget(),
        body: Container(
            padding: const EdgeInsets.all(0.0),
            child: new ListView(
              children: <Widget>[
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      height: 300.0,
                      child: new Carousel(
                        images: [
                          new ExactAssetImage("images/dragon.jpg"),
                          new ExactAssetImage("images/electronics.jpg"),
                          new ExactAssetImage("images/Super.jpg"),
                        ],
                        autoplay: false,
                        dotSize: 5.0,
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(
                        "Price: ${widget.item.price.toString()}/-",
                        style: new TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(
                        "Name: ${widget.item.partName}",
                        style: new TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(
                        "Brand: JBL",
                        style: new TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    new Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "Description:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            new Text(
                                "I have a List Builder that creates a list based off of the documents listed in Firestore. I am trying to take the value generated from a Firestore snapshot and pass it out of the class to a variable that is updated every time the user clicks on a different entry from the List Builder")
                          ],
                        )),
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new IconButton(
                              icon: new Icon(
                                Icons.phone,
                                color: Colors.red,
                              ),
                              onPressed: null,
                            ),
                            new Text("Call Owner"),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new IconButton(
                              icon: new Icon(
                                Icons.message,
                                color: Colors.blue,
                              ),
                              onPressed: null,
                            ),
                            new Text("SMS Owner"),
                          ],
                        ),
                      ],
                    ),
                    new Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new RaisedButton(
                            child: new Text("Buy"),
                            onPressed: null,
                            color: Colors.teal,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
