import 'package:flutter/cupertino.dart';

import '../model/product_item.dart';

class ProductCard extends StatelessWidget {
  final ProductItem item;

  ProductCard({ Key? key, required this.item}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        child: Text(item.name ?? ''),
      )
    );
  }
}