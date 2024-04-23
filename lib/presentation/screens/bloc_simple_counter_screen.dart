import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc/presentation/blocs/simple_counter_bloc/simple_counter_bloc.dart';

class BlocSimpleCounterScreen extends StatelessWidget {
  const BlocSimpleCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Nuevo usuario'),
      ),
      body: BlocProvider(
        create: (context) => SimpleCounterBloc(),
        child: const _BlocSimpleCounterView(),
      )
    );
  }
}


class _BlocSimpleCounterView extends StatelessWidget {
  const _BlocSimpleCounterView();

  @override
  Widget build(BuildContext context) {

    final simpleCounterBloc = BlocProvider.of<SimpleCounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Counter Value:',
          ),
          BlocBuilder<SimpleCounterBloc, int>(
            builder: (context, state) {
              return Text(
                '$state',
                style: const TextStyle(fontSize: 24),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                heroTag: UniqueKey(),
                onPressed: () {
                  simpleCounterBloc.add(CounterEvent.increment);
                  //context.read<SimpleCounterBloc>().incrementByOne();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                heroTag: UniqueKey(),
                onPressed: () {
                  simpleCounterBloc.add(CounterEvent.decrement);
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}