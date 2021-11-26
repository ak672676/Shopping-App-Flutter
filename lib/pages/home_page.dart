import 'dart:convert';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:learning_flutter/models/catalog.dart';
import 'package:learning_flutter/widgets/drawer.dart';
import 'package:learning_flutter/widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});


  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) => ItemWidgets(
            item: CatalogModel.items[index],
          ),
        )
            : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
