import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth_cubit.dart';
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

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthAuthenticated) {
            // Navigate to the home page or another authenticated screen
               return LoginPage();

          } else {
            // Show the login UI
            return LoginPage();
          }
        },
      ),
    );
  }
}

// Create LoginScreen and HomeScreen widgets accordingly.