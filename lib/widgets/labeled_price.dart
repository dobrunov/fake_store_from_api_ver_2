import 'package:flutter/material.dart';

import '../styles/styles.dart';

class LabeledPrice extends StatelessWidget {
  final double? productPrice;
  final String label;
  final TextStyle style;

  const LabeledPrice(
      {Key? key,
      required this.productPrice,
      required this.label,
      required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: style,
        ),
        Padding(
          padding: pPrice,
          child: Text(
            "\$" + productPrice.toString(),
            style: priceTextStyle,
          ),
        ),
      ],
    );
  }
}
