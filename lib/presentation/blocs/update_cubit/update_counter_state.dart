part of 'update_counter_cubit.dart';

sealed class UpdateCounterState extends Equatable {
  const UpdateCounterState();
}

final class UpdateCounterInitial extends UpdateCounterState {

  final int counter;
  final int transactionCount;

  const UpdateCounterInitial({
    this.counter = 0, 
    this.transactionCount = 0
  });

  copyWith({
    int? counter,
    int? transactionCount,
  }) => UpdateCounterInitial(
    counter: counter ?? this.counter,
    transactionCount: transactionCount ?? this.transactionCount,
  );


  @override
  List<Object> get props => [ counter, transactionCount ];

}
