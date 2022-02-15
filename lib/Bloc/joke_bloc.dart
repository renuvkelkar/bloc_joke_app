import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_joke_app/Model/joke_model.dart';
import 'package:bloc_joke_app/Repository/joke_repository.dart';
import 'package:equatable/equatable.dart';

part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final JokeRepository _jokeRepository;
  JokeBloc(this._jokeRepository) : super(JokeLoadingState()) {
    on<JokeEvent>((event, emit) async{
      emit(JokeLoadingState());
      try {
        final joke = await _jokeRepository.getJoke();
        emit(JokeLoadedState(joke));
      } catch (e) {
        emit(JokeErrorState(e.toString()));
      }
    });
  }
}
