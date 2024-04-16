part of 'register_bloc.dart';

class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class UsernameChanged extends RegisterEvent {
  final String value;
  const UsernameChanged(this.value);
}

class OnSubmit extends RegisterEvent {}
