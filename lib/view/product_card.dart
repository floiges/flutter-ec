import 'package:flutter/material.dart';
import '../model/product_item.dart';

class ProductCard extends StatelessWidget {
  // final ProductItem item;

  ProductCard({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Row(
        children: [
           Container(
            width: 254,
            height: 254,
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ],
      )
    );
  }
}

/*
Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FAFJAS;LFJAGJALGJD多费劲啊多费劲啊； 擦撒发三个撒个FAFJAS;LFJAGJALGJD多费劲啊多费劲啊； 擦撒发三个撒个',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 14,
                        )
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: '￥', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
                            TextSpan(text: '200', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red))
                          ]
                        )
                      )
                    ],
                  )
                ),
              )
            ],
          ),
          )
          */