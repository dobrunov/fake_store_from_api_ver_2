import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
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
                    const Text(
                      "FROM",
                      style: priceTextTextStyle,
                    ),
                    Padding(
                      padding: pPrice,
                      child: Text(
                        "\$" + product.price.toString(),
                        style: priceTextStyle,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: pButtonCircle,
                        primary: black87, // background
                        onPrimary: white, // foreground
                      ),
                      child: const Icon(
                        Icons.add_shopping_cart,
                        size: 25,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: pImage,
                  margin: EdgeInsets.all(2),
                  child: Image.network(product.image ?? '',
                      height: 340, width: 240),
                ),
              ],
            ),
            Padding(
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
            ),

            /// Product title
            Padding(
              padding: pTitle,
              child: Row(
                children: [
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
        ),
      ),
    );
  }
}
