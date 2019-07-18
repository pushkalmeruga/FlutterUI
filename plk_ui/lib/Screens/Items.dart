import 'package:flutter/material.dart';
import 'package:plk_ui/Models/Item.dart';
import 'package:plk_ui/Screens/Drawer.dart';
import 'package:plk_ui/Screens/StaggeredGridWidget.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          elevation: 3.0,
        ),
        drawer: DrawerWidget(),
        body: Container(
          padding: const EdgeInsets.all(0.0),
          child: StaggeredGridWidget(
            items: new Item().getItems(),
            navigateToUrl: "/viewItem",
          ),
        ));
  }
}
