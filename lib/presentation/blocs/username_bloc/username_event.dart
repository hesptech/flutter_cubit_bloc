part of 'username_bloc.dart';

sealed class UsernameEvent extends Equatable {
  const UsernameEvent();

  @override
  List<Object> get props => [];
}

class GenerateUsername extends UsernameEvent {
  final String value;
  const GenerateUsername(this.value);
}
