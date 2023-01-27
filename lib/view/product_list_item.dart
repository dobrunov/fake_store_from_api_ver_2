import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';
import '../widgets/add_to_cart_button.dart';
import '../widgets/labeled_price.dart';
import '../widgets/product_image.dart';
import '../widgets/product_info_block.dart';
import '../widgets/product_text_block.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //
    double? productPrice = product.price;
    //
    return Material(
      color: white,
      child: Padding(
        padding: pPage,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    LabeledPrice(
                        label: 'FROM',
                        productPrice: productPrice,
                        style: priceTextTextStyle),
                    AddToCartButton()
                  ],
                ),
                ProductImage(product: product),
              ],
            ),
            ProductInfoBlock(
              product: product,
              styleCategory: categoryTextStyle,
              styleRate: ratingTextStyle,
              styleCount: buttonsTextStyle,
            ),
            ProductTextBlock(
              product: product,
              styleTitle: productTitleTextStyle,
              styleDescription: productDescTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
