import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '/infrastructure/inputs/inputs.dart';
import 'package:formz/formz.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    
    on<UsernameChanged>( _onUsernameChanged );
    on<OnSubmit>( _onSubmit );
  }

  void _onUsernameChanged( UsernameChanged event, Emitter<RegisterState> emit ) {
    final username = Username.dirty(event.value);
        //print('---------------------------------');
    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate([ username ])
      )
    );
  }

  void usernameChanged( String value ){
    add(UsernameChanged(value));    
  }

  void _onSubmit( OnSubmit event, Emitter<RegisterState> emit ) {
    emit(
        state.copyWith(
        formStatus: FormStatus.validating,
        username: Username.dirty( state.username.value ),
        password: Password.dirty( state.password.value ),
        email: Email.dirty( state.email.value ),

        isValid: Formz.validate([
          state.username, 
          state.password,
          // state.email
        ])
      )
    );

    //print('Bloc Submit: $state');
  }

  void onSubmit(){
    add( OnSubmit() );
  }

}
