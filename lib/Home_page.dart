import 'package:counter_app_cubit/cubit/counter_cubit.dart';
import 'package:counter_app_cubit/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  final cubit =  BlocProvider.of<CounterCubit>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubit,CounterStates>(
                builder: (context, state) {
                  return  Text(
                 cubit.counter.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                );
                },
                
              ),
              const SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
              cubit.inc();
                    },
                    icon: const Icon(
                      Icons.add,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                 cubit.dec();
                    },
                    icon: const Icon(
                      Icons.remove,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
      } 
        
     
   
  }
 
