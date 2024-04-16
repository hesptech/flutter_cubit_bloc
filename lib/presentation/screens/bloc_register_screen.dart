import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/presentation/blocs/register_bloc/register_bloc.dart';
import '/presentation/widgets/widgets.dart';

class BlocRegisterScreen extends StatelessWidget {
  const BlocRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Nuevo usuario'),
      ),
      body: BlocProvider(
        create: (context) => RegisterBloc(),
        child: const _RegisterView(),
      )
    );
  }
}


class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
        
              FlutterLogo( size: 100 ),

              _RegisterForm(),              

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    final registerBloc = context.watch<RegisterBloc>();
    final username = registerBloc.state.username;
    //final email = registerCubit.state.email;
    //final password = registerCubit.state.password;

    return Form(
      //key: _formKey,
      child: Column(
        children: [

          CustomTextFormField(
            label: 'Nombre de usuario',
            onChanged: registerBloc.usernameChanged,
            errorMessage: username.errorMessage,
          ),
          const SizedBox(height: 10),
          
          /* CustomTextFormField(
            label: 'Correo electrónico',
            onChanged: registerCubit.emailChanged,
            errorMessage: email.errorMessage,
          ),
          const SizedBox(height: 10),

          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged: registerCubit.passwordChanged,
            errorMessage: password.errorMessage,
          ), */

          const SizedBox(height: 20),

          FilledButton.tonalIcon(
            onPressed: (){

              registerBloc.onSubmit();
            }, 
            icon: const Icon( Icons.save),
            label: const Text('Crear usuario'),
          ),
        ],
      )
    );
  }
}