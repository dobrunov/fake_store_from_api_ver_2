import 'package:fakestore_one/view/product_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/product_bloc.dart';
import '../styles/styles.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        switch (state.status) {
          case ProductsStatus.failure:
            return const Center(child: Text('failed to fetch Products'));
          case ProductsStatus.success:
            if (state.products.isEmpty) {
              return const Center(
                  child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(grey),
              ));
            }
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ProductListItem(product: state.products[index]);
              },
              itemCount: state.products.length,
              controller: _scrollController,
            );
          default:
            return const Center(
                child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(grey),
            ));
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController..dispose();
    super.dispose();
  }
}
