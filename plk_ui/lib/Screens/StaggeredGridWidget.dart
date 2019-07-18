import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plk_ui/Models/Item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plk_ui/Screens/ViewItem.dart';

class StaggeredGridWidget extends StatefulWidget {
  StaggeredGridWidget({Key key, this.items, this.navigateToUrl})
      : super(key: key);

  final List<Item> items;

  final String navigateToUrl;

  @override
  _StaggeredGridWidgetState createState() => _StaggeredGridWidgetState();
}

class _StaggeredGridWidgetState extends State<StaggeredGridWidget> {
  ScrollController controller;

  var items;

  @override
  void initState() {
    items = widget.items.take(20);
    widget.items.removeRange(0, 20);
    controller = new ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: items.length,
      controller: controller,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      //primary: true,
      itemBuilder: (BuildContext context, int index) =>
          _buildGridTile(widget.items[index], index),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 3 : 2),
    );
  }

  Widget _buildGridTile(Item item, int index) {
    return new GestureDetector(
      onTap: (){
        _navigateToRoute(item);
      },
      child: Container(
          color: Colors.transparent,
          child: new Card(
              elevation: 3.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    index.isEven ? "images/Super.jpg" : "images/cell.jpg",
                    width: index.isEven ? 200.0 : 150.0,
                    height: index.isEven ? 250.0 : 150.0,
                  ),
                  new Divider(
                    height: 10.0,
                  ),
                  Text("Item Name: ${item.partName}"),
                  Text("Price: ${item.price} $index"),
                ],
              ))),
    );
  }

  void _scrollListener() {
    print(controller.position.extentAfter);
    //print(items.indexOf(widget.items.last));
    if (controller.position.extentAfter < 100) {
      setState(() {
        items = widget.items.take(60);
      });
    }
  }

  void _navigateToRoute(Item item) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewItemWidget(item: item,)));
  }
}
