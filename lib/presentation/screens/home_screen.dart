import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Cubit BLoC - (Formularios)'),),
      body: ListView(
        children: <Widget>[
          _subtitle('Flutter - Móvil: De cero a experto'),

          ListTile(
            title: const Text('Cubits'),
            subtitle: const Text('Gestor de estado simple'),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () => context.push('/cubits'),
          ),

          ListTile(
            title: const Text('BLoC'),
            subtitle: const Text('Gestor de estado compuesto'),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () => context.push('/counter-bloc'),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),

          ListTile(
            title: const Text('BLoC "flutter_bloc: ^8.1.5" update'),
            subtitle: const Text('Updated BLoC State Management'),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () => context.push('/update-counter-bloc'),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),

          ListTile(
            title: const Text('Cubit - Nuevo usuario'),
            subtitle: const Text('Manejo de formularios'),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () => context.push('/new-user'),
          ),

          ListTile(
            title: const Text('Bloc - Nuevo usuario'),
            subtitle: const Text('Manejo de formularios'),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () => context.push('/new-user-bloc'),
          ),

          _subtitle('Medium differences-between-bloc-and-riverpod'),

          ListTile(
            title: const Text('BLoC - simple Counter'),
            subtitle: const Text('one file bloc'),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () => context.push('/counter-bloc-simple'),
          ),

          _subtitle('Mini-Curso: Flutter BLoC'),

          ListTile(
            title: const Text('BLoC - username'),
            subtitle: const Text('username - Mini-Curso: Flutter BLoC '),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () => context.push('/username-bloc'),
          ),

        ],
      ),
    );
  }

  Widget _subtitle(String subTitle) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(),
        ),
        Text(subTitle, style: const TextStyle(fontWeight: FontWeight.bold),),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(),
        ),
      ],
    );
  }
}