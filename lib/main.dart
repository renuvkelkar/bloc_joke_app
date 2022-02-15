import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Home/home_page.dart';
import 'Repository/joke_repository.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: RepositoryProvider(
        create: (context) => JokeRepository(),
        child: const Home(),
      ),
    );
  }
}
