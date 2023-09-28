 

import 'package:counter_app_cubit/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {


  CounterCubit() :super(InitialState());

  int counter = 0;
  
   void inc(){
    emit(InitialState());
    counter++;
    emit(IncState());
   }

 void dec(){
   emit(InitialState());
    counter--;
    emit(DecState());
   }
}