import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';

class ProductInfoBlock extends StatelessWidget {
  const ProductInfoBlock({
    Key? key,
    required this.product,
    required this.styleCategory,
    required this.styleRate,
    this.styleCount,
  }) : super(key: key);

  final Product product;
  final styleCategory;
  final styleRate;
  final styleCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pCategory,
      child: Row(
        children: <Widget>[
          /// Product category
          Container(
            child: Text(
              product.category ?? '',
              style: styleCategory,
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: Container(),
          ),

          /// Rating rate
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: pButton,
              primary: black87, // background
              onPrimary: white, // foreground
            ),
            child: Text(
              product.rating?.rate.toString() ?? '',
              style: ratingTextStyle,
              textAlign: TextAlign.right,
            ),
            onPressed: () {},
          ),

          /// Ratig count
          Container(
            padding: pRating,
            width: 30.0,
            height: 20.0,
            alignment: Alignment.center,
            decoration: decoGrey,
            child: Text(
              product.rating?.count.toString() ?? '',
              style: styleCount,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
