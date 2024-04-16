import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/presentation/blocs/update_cubit/update_counter_cubit.dart';

class UpdateBlocCounterScreen extends StatelessWidget {
  const UpdateBlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => UpdateCounterCubit(), child: const _UpdateCubitCounterView());
  }
}



class _UpdateCubitCounterView extends StatelessWidget {
  const _UpdateCubitCounterView();

  void increaseCounterBy( BuildContext context, [ int value = 1 ]) {
    context.read<UpdateCounterCubit>().increaseBy(value);
  }


  @override
  Widget build(BuildContext context) {

    // final counterState = context.watch<CounterCubit>().state;

    return Scaffold(
        appBar: AppBar(
          title: context.select(( UpdateCounterCubit value) {
            return Text('Cubit Counter: ${ value.state.transactionCount }');
          }),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<UpdateCounterCubit>().reset();
                }, 
              icon: const Icon(Icons.refresh_outlined))
          ],
        ),
        body: Center(
          child: BlocBuilder<UpdateCounterCubit, UpdateCounterInitial>(
            // buildWhen: (previous, current) => current.counter != previous.counter,
            builder: (context, state) {
              //print('Estado cambió');
              return Text('Counter value: ${ state.counter }');
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                heroTag: '1', child: const Text('+3'), onPressed: () => increaseCounterBy(context, 3) ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
                heroTag: '2', child: const Text('+2'), onPressed: () => increaseCounterBy(context, 2) ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
                heroTag: '3', child: const Text('+1'), onPressed: () => increaseCounterBy(context) ),
          ],
        ));
  }
}
