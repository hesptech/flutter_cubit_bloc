import 'package:flutter_bloc/flutter_bloc.dart';


// Define the possible events for the counter
enum CounterEvent { increment, decrement }

class SimpleCounterBloc extends Bloc<CounterEvent, int> {
  SimpleCounterBloc() : super(0) {
    //via on<CounterEvent>((event, emit)
    //on<CounterEvent>(incrementByOne);
    on<CounterEvent>((event, emit) {
      //mapEventToState(CounterEvent.increment);
      if(event == CounterEvent.increment) emit( state + 1 );
      if(event == CounterEvent.decrement) emit( state - 1 );
    });
  }

  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event == CounterEvent.increment) {
      // Increase the counter when 'increment' event is received
      yield state + 1;
    } else if (event == CounterEvent.decrement) {
      // Decrease the counter when 'decrement' event is received
      yield state - 1;
    }
  }

  /* void incrementByOne(){
    add(CounterEvent.increment);    
  } */
}
