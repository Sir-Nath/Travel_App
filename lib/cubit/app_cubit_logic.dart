
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/welcome_page.dart';
import '../cubit/app_cubit.dart';
import '../cubit/app_cubit_state.dart';
import 'app_cubit_state.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        //Blocbuilder check states
        builder: (context, state){
          if(state is DetailState){
            return const DetailPage();
          }
          if(state is WelcomeState){
            return const WelcomePage();
          }
          if(state is LoadedState){
            return const HomePage();
          }
          if(state is LoadingState){
            return const Center(child: CircularProgressIndicator(),);
          }


          else{
            return Container();
          }
        },
      ),
    );
  }
}

