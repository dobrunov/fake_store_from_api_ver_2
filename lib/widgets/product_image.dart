import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pImage,
      margin: EdgeInsets.all(2),
      child: Image.network(product.image ?? '', height: 340, width: 240),
    );
  }
}
