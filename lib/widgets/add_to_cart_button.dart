import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
