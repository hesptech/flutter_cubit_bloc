import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'username_event.dart';
part 'username_state.dart';

class UsernameBloc extends Bloc<UsernameEvent, UsernameState> {
  UsernameBloc() : super(const UsernameState()) {
    /* on<UsernameEvent>((event, emit) {
      
    }); */

    on<GenerateUsername>( _onUsername );
  }

  void _onUsername(GenerateUsername event, Emitter<UsernameState> emit) {
    emit(state.copyWith(
      userName: event.value
    ));
  }

  void setUsername(String userName) {
    add(GenerateUsername(userName));
  }
}
