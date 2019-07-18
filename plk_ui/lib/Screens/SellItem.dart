import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:plk_ui/Models/Item.dart';
import 'package:plk_ui/Screens/CameraWidget.dart';
import 'package:plk_ui/Screens/Drawer.dart';

class SellItemWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SellItemWidgetState();
}

class _SellItemWidgetState extends State<SellItemWidget> {
  Item _item = new Item();
  @override
  Widget build(BuildContext context) {
    CameraWidget _image;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sell Item"),
      ),
      drawer: DrawerWidget(),
      body: _buildSellItemForm(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _image = CameraWidget();
        },
        tooltip: "Pick Image",
        child: new Icon(
          Icons.add_a_photo,
        ),
      ),
    );
  }

  Widget _buildSellItemForm() {
    return new Container(
      padding: const EdgeInsets.all(20.0),
      child: new ListView(
        children: <Widget>[
          new Form(
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Item Type"),
                  validator: (value) =>
                      value.isEmpty ? "Item Type can't be empty" : null,
                  onSaved: (value) => _item.itemType = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Part Name"),
                  onSaved: (value) => _item.partName = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Model"),
                  validator: (value) =>
                      value.isEmpty ? "Model can't be empty" : null,
                  onSaved: (value) => _item.model = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Brand"),
                  validator: (value) =>
                      value.isEmpty ? "Brand can't be empty" : null,
                  onSaved: (value) => _item.brand = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Description"),
                  onSaved: (value) => _item.description = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Price"),
                  validator: (value) =>
                      value.isEmpty ? "Price can't be empty" : null,
                  onSaved: (value) => _item.price = double.parse(value),
                ),
                _buildImagesCorousel(),
                _buildButton()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButton() {
    return new RaisedButton(
      onPressed: null,
      child: new Text("Save Item"),
      elevation: 3.0,
    );
  }

  Widget _buildImagesCorousel() {
    return new ListView(
      children: <Widget>[],
    );
  }
}
