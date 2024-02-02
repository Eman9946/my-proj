import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth_cubit.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => AuthCubit(),
        child: LoginPage(),
      ),
    );
  }
}