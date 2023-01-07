import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fakestore_one/simple_bloc_observer.dart';
import 'package:fakestore_one/view/products_page.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}

class App extends MaterialApp {
  App() : super(home: ProductPage());
}
