import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;

import '../bloc/product_bloc.dart';
import 'package:fakestore_one/view/products_list.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.black87, title: const Text('Fake store')),
      body: BlocProvider(
        create: (_) =>
            ProductBloc(httpClient: http.Client())..add(ProductFetched()),
        child: ProductList(),
      ),
    );
  }
}
