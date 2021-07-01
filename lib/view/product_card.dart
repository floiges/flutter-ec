import 'package:flutter/material.dart';
import '../model/product_item.dart';

class ProductCard extends StatelessWidget {
  final ProductItem item;

  ProductCard({ Key? key, required this.item }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        padding: EdgeInsets.all(12),
        height: 156,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(item.image ?? ''),
              fit: BoxFit.cover,
              width: 132,
              height: 132,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                      )
                    ),
                    Column(
                      children: [
                        if (item.salesVolume > 0) Text('已售${item.salesVolume.toString()}件'),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: '￥', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
                              TextSpan(text: item.sellingPrice, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red))
                            ]
                          )
                        )
                      ],
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      )
    );
  }
}