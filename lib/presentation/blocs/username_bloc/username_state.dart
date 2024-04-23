part of 'username_bloc.dart';

class UsernameState extends Equatable {

  final String userName;

  const UsernameState({
    this.userName = 'no-username',
  });

  UsernameState copyWith({
    String? userName
  }) => UsernameState(
    userName: userName ?? this.userName
  );
  
  @override
  List<Object> get props => [ userName ];
}
