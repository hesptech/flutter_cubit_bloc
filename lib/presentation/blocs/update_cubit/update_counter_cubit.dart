import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'update_counter_state.dart';

class UpdateCounterCubit extends Cubit<UpdateCounterInitial> {
  UpdateCounterCubit() : super(const UpdateCounterInitial(counter: 500));

  void increaseBy( int value ) {
    emit( state.copyWith(
      counter: state.counter + value,
      transactionCount: state.transactionCount + 1,
    ));
  }

  void reset() {
    emit( state.copyWith(
      counter: 0,
    ));
  }
}
