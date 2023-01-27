import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';

class ProductTextBlock extends StatelessWidget {
  const ProductTextBlock({
    Key? key,
    required this.product,
    required this.styleTitle,
    required this.styleDescription,
  }) : super(key: key);

  final Product product;
  final styleTitle;
  final styleDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: pTitle,
          child: Row(
            children: [
              /// Product title
              Expanded(
                child: Text(
                  product.title ?? '',
                  style: productTitleTextStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),

        /// Product description
        Text(product.description ?? '',
            maxLines: 3,
            style: productDescTextStyle,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis),
        const Divider(
          color: black,
          indent: 1,
          endIndent: 1,
        ),
      ],
    );
  }
}
