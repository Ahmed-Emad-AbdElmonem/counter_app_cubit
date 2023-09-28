import 'package:counter_app_cubit/Home_page.dart';
import 'package:counter_app_cubit/cubit/counter_cubit.dart';
import 'package:counter_app_cubit/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return BlocProvider (
      create: (context) {
        return CounterCubit();
      },
       
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
