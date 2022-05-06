import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_logic.dart';
import 'package:travel_app/pages/welcome_page.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/services/data_services.dart';
import 'navPages/main_page.dart';
import 'pages/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:  BlocProvider<AppCubits>(
        //BlocProvider holds and creates states
        create: (context)=> AppCubits(
            data: DataServices()
        ),
        child: const AppCubitLogics(),
      )
    );
  }
}


