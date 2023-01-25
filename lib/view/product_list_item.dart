import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';
import '../widgets/add_to_cart_button.dart';
import '../widgets/labeled_price.dart';
import '../widgets/product_image.dart';

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
            ProductInfoBlock(product: product),
            ProductTextBlock(product: product),
          ],
        ),
      ),
    );
  }
}

class ProductInfoBlock extends StatelessWidget {
  const ProductInfoBlock({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

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
              style: categoryTextStyle,
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
              style: buttonsTextStyle,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductTextBlock extends StatelessWidget {
  const ProductTextBlock({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

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
