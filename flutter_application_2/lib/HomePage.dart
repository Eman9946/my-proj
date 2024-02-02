import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  HomeScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, ${user.displayName}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Trigger the sign-out process using the cubit
                context.read<AuthCubit>().signOut();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}