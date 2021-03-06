import 'package:flutter/material.dart';
import './model/res.dart';
import './model/product_item.dart';
import './view/product_card.dart';
import './utils/api.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _MyListPageState createState() => _MyListPageState();
}

class _MyListPageState extends State<ListPage> {
  List<ProductItem> products = [];

  @override
  void initState() {
    super.initState();

    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    print('Lifecycle method build called');
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('ๅๅๅ่กจ'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) => ProductCard(item: products[index])
      ),
    );
  }

  void getProducts() async {
    Res res = await fetchProducts();
    if (!res.flag) {
      return;
    }
    List<ProductItem> items = [];
    res.data['products'].forEach((it) {
      items.add(ProductItem.fromJson(it));
    });
    setState(() {
      products = items;
    });
  }
}
