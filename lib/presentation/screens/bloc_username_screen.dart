import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_cubit_bloc/presentation/blocs/username_bloc/username_bloc.dart';
import 'package:flutter_cubit_bloc/config/helpers/random_generator.dart';



class BlocUsernameScreen extends StatelessWidget {
  const BlocUsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UsernameBloc(),
      child: const BlocUsernameView()
    );
  }
}

class BlocUsernameView extends StatelessWidget {
  const BlocUsernameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC username Generator'),
      ),
      body: Center(
        child: context.select(
          ( UsernameBloc usernameBloc) => Text('Username value: ${ usernameBloc.state.userName }')
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UsernameBloc>().setUsername(
            RandomGenerator.getRandomName()
            //'Fernando'
          );
        },
        child: const Icon(Icons.refresh),
      ),      

    );
  }
}